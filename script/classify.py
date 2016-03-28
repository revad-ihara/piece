#!/usr/bin/env python

import sys
from collections import defaultdict
from pycnn import *

NUM_EPOCHS = 100

# A map to turn words into integer IDs
wids = defaultdict(lambda: len(wids))

# Load train data
train_data = []
with open(sys.argv[1], "r") as train_file:
  for line in train_file:
    label, words = line.strip().split("\t")
    cnt = defaultdict(lambda: 0)
    for word in words.split(" "):
      cnt[wids[word]] += 1
    train_data.append((cnt, (int(label)+1)/2))

# Load test data
test_data = []
with open(sys.argv[2], "r") as test_file:
  for line in test_file:
    label, words = line.strip().split("\t")
    cnt = defaultdict(lambda: 0)
    for word in words.split(" "):
      if word in wids:
        cnt[wids[word]] += 1
    test_data.append((cnt, (int(label)+1)/2))

# Create a logistic regression model
VOCAB_SIZE = len(wids)
model = Model()
sgd = SimpleSGDTrainer(model)
model.add_parameters("w", (VOCAB_SIZE))
model.add_parameters("b", (1))

# Create the computation graph
renew_cg()
w = parameter(model["w"])
b = parameter(model["b"])
x = vecInput(VOCAB_SIZE)
y = scalarInput(0)
y_pred = logistic(transpose(w)*x + b)
loss = binary_log_loss(y_pred, y)

# A function to predict and evaluate one instance
def predict_one(cnt, label):
  x_data = [0] * VOCAB_SIZE
  for word, val in cnt.items():
    x_data[word] = val
  x.set(x_data)
  y.set(label)
  answer = 1 if y_pred.scalar_value() > 0.5 else 0
  correct = 1 if answer == label else 0
  return loss.scalar_value(), correct

# Perform training, and testing at every iteration
for epoch in range(NUM_EPOCHS):
  # Training
  train_loss, train_correct, train_num = 0.0, 0.0, 0
  for cnt, label in train_data:
    my_loss, my_correct = predict_one(cnt, label)
    train_loss += my_loss
    train_correct += my_correct
    train_num += 1
    loss.backward()
    sgd.update(1.0)
  # Testing, same as training but without backward and update
  test_loss, test_correct, test_num = 0.0, 0.0, 0
  for cnt, label in test_data:
    my_loss, my_correct = predict_one(cnt, label)
    test_loss += my_loss
    test_correct += my_correct
    test_num += 1
  # Print the scores
  print "epoch %d: train -- l=%f, c=%f, test -- l=%f, c=%f" % (epoch+1, train_loss/train_num, train_correct/train_num, test_loss/test_num, test_correct/test_num)
