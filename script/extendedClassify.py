#!/usr/bin/env python

# python extendedClassify.pl ./data/Discussion_eachComment_training.txt ./data/Discussion_eachComment_testing.txt

import sys
import nltk
from collections import defaultdict
from pycnn import *

NUM_EPOCHS = 100

# A map to turn words into integer IDs
wids = defaultdict(lambda: len(wids))

# Load train data
train_data = []
sum_line = ""
label=-1
positive_vote = 0
negative_vote = 0

with open(sys.argv[1], "r") as train_file:
  for line in train_file:
    #begin{combine all comment in one review, then input to words}
    if len(line) <= 1: #criteria to finish one review
        words = sum_line
        print("----------"+comment_line[0]+"  ", end='')
        if label == 1: #accept:1 reject:0
            print("Merged -----------", end='')
        elif label == 0:
            print("Abandoned -----------", end='')
        else:
            print("Failed -----------", end='')

        #sys.stdout.write(words)
        sum_line = ""
        complete_flag = 0
        label=-1
        positive_vote = 0
        negative_vote = 0
    else:
        line = line.replace('\n','')
        comment_line = line.split("|||")
        #filter out automatical message
        comment_line[4] = comment_line[4].replace('\ @@@','')
        comment_line[4] = comment_line[4].replace('@@@','')

        #sys.stdout.write(comment_line[4]+"\n")

        # decision message (Merged or Abandoned)
        import VotingMessage
        (score,comment_line[4]) = VotingMessage.message(comment_line[4])
        if score == "99":
            #sys.stdout.write("AA"+"\n")
            label = 1
            continue
        elif score == "88":
            #sys.stdout.write("RR"+"\n")
            label = 0
            continue

        #identify automatical comment for voting
        if (score == "2") or (score == "1"):
            positive_vote = positive_vote + 1
        elif (score == "-2") or (score == "-1"):
            negative_vote = negative_vote + 1

        #identify automatical comment for patch conflict
#        if score == "-98":

        #identify automatical comment for patch submission
        if score == "-99":
            continue


        print(score+"  "+comment_line[4]+"\n", end='')
        sum_line = sum_line + comment_line[4]
        continue
    #end{combine all comment in one review, then input to words}

    cnt = defaultdict(lambda: 0)
    #print(words, end='')
    #words = words.encode('utf-8')
    #print(nltk.word_tokenize(words)[1], end='')
#    for word in [x.lower() for x in nltk.word_tokenize(words)]:
#    for word.lower() in nltk.word_tokenize(words)]:

#      cnt[wids[word]] += 1
#    train_data.append((cnt, (int(label)+1)/2))

# Load test data
test_data = []
with open(sys.argv[2], "r") as test_file:
  for line in test_file:
    #begin{combine all comment in one review, then input to words}
    if len(line) <= 1: #criteria to finish one review
        words = sum_line
        print("----------"+comment_line[0]+"  ", end='')
        if label == 1: #accept:1 reject:0
            print("Merged -----------", end='')
        elif label == 0:
            print("Abandoned -----------", end='')
        else:
            print("Failed -----------", end='')

        #sys.stdout.write(words)
        sum_line = ""
        complete_flag = 0
        label=-1
        positive_vote = 0
        negative_vote = 0
    else:
        line = line.replace('\n','')
        comment_line = line.split("|||")
        #filter out automatical message
        comment_line[4] = comment_line[4].replace('\ @@@','')
        comment_line[4] = comment_line[4].replace('@@@','')

        #sys.stdout.write(comment_line[4]+"\n")

        # decision message (Merged or Abandoned)
        import VotingMessage
        (score,comment_line[4]) = VotingMessage.message(comment_line[4])
        if score == "99":
            #sys.stdout.write("AA"+"\n")
            label = 1
            continue
        elif score == "88":
            #sys.stdout.write("RR"+"\n")
            label = 0
            continue

        #identify automatical comment for voting
        if (score == "2") or (score == "1"):
            positive_vote = positive_vote + 1
        elif (score == "-2") or (score == "-1"):
            negative_vote = negative_vote + 1

        #identify automatical comment for patch conflict
#        if score == "-98":

        #identify automatical comment for patch submission
        if score == "-99":
            continue


        print(score+"  "+comment_line[4]+"\n", end='')
        sum_line = sum_line + comment_line[4]
        continue
    #end{combine all comment in one review, then input to words}

    cnt = defaultdict(lambda: 0)
    for word in words.split(" "):
      if word in wids:
        cnt[wids[word]] += 1
    test_data.append((cnt, (int(label)+1)/2))

# Create a logistic regression model
VOCAB_SIZE = len(wids)
model = Model()
sgd = SimpleSGDTrainer(model)
model.add_lookup_parameters("w", (VOCAB_SIZE, 1))
model.add_parameters("b", (1))

# A function to predict and evaluate one instance
def predict_one(cnt, label):
  # Create the computation graph
  renew_cg()
  y_pred_input = [ parameter(model["b"]) ]
  for word, val in cnt.items():
    y_pred_input.append( lookup(model["w"], word) * val )
  y_pred_input = sum(y_pred_input)
  y_pred = logistic(y_pred_input)
  y = scalarInput(label)
  loss = binary_log_loss(y_pred, y)
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
 # print("epoch %d: train -- l=%f, c=%f, test -- l=%f, c=%f" % (epoch+1, train_loss/train_num, train_correct/train_num, test_loss/test_num, test_correct/test_num, end='')
