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
    review_num = 0
    for line in train_file:
        line = unicode(line,'utf-8')
        #begin{combine all comment in one review, then input to words}
        if len(line) <= 1: #criteria to finish one review
            words = sum_line
            #print("----------"+comment_line[0]+"  ", end='')
            #print "----------"+comment_line[0]+"  "
            #sys.stdout.write("----------"+comment_line[0]+"  ")
            ################## output of each review comment and decision
            #if label == 1: #accept:1 reject:0
            #    print "Merged -----------"
            #elif label == 0:
            #    print "Abandoned -----------"
            #else:
            #    print "Failed -----------"
            #    print "error"
                #sys.exit(1)
            #print(words.lower())
            if (label==1) or (label==0):
                cnt = defaultdict(lambda: 0)
                for my_line in sum_line.split("\n"):
                    for word in nltk.word_tokenize(words):
                        cnt[wids[word.lower()]] += 1
                        #train_data.append(cnt, (int(label)))
                        train_data.append( (review_num, dict(cnt), (int(label))) )
            review_num += 1
            ################## initializeation
            sum_line = ""
            complete_flag = 0
            label=-1
            positive_vote = 0
            negative_vote = 0
        else:
            #line = line.replace('\n','')
            comment_line = line.split("|||")
            #filter out automatical message
            comment_line[4] = comment_line[4].replace('\ @@@','')
            comment_line[4] = comment_line[4].replace('@@@','')
            # decision message (Merged or Abandoned)
            import VotingMessage
            (score,comment_line[4]) = VotingMessage.message(comment_line[4])
            if score == "99":
                positive_vote = positive_vote + 1
                sum_line = sum_line + " @@@mer@@@ "
                #sys.stdout.write("AA"+"\n")
                label = 1
                continue
            elif score == "88":
                sum_line = sum_line + " @@@aba@@@ "
                #sys.stdout.write("RR"+"\n")
                label = 0
                continue
            #identify automatical comment for voting
            if (score == "2") or (score == "1"):
                positive_vote = positive_vote + 1
                sum_line = sum_line + " @@@pos@@@ "
            elif (score == "-2") or (score == "-1"):
                sum_line = sum_line + " @@@neg@@@ "
                negative_vote = negative_vote + 1
            #identify automatical comment for patch conflict
            if score == "-98":
                sum_line = sum_line + " @@@con@@@ "
                continue
            #identify automatical comment for patch submission
            if score == "-99":
                continue
            ################ sum_line means the combined all comments
            sum_line = sum_line + comment_line[4]
            continue
        #end{combine all comment in one review, then input to words}

        #cnt = defaultdict(lambda: 0)
        #for word in nltk.word_tokenize(words):
        #    cnt[wids[word.lower()]] += 1
        #train_data.append( (cnt, (int(label))) )

# Load test data
test_data = []
post_count = 0
cnts = []
with open(sys.argv[2], "r") as test_file:
    review_num = 0
    for line in test_file:
        line = unicode(line,'utf-8')
        #begin{combine all comment in one review, then input to words}
        if len(line) <= 1: #criteria to finish one review
            #if len(sum_line) == 0:
            #    print "length zero error"
            #    sys.exit(1)
            words = sum_line
            #print("----------"+comment_line[0]+"  ", end='')
            sys.stdout.write("----------"+comment_line[0]+"  ")
            ################## output of each review comment and decision
            if label == 1: #accept:1 reject:0
                print "Merged -----------"
            elif label == 0:
                print "Abandoned -----------"
            else:
                print "Failed -----------"
            cnt = defaultdict(lambda: 0)
            for line in sum_line.split("\n"):
                for word in nltk.word_tokenize(sum_line):
                    word = word.lower()
                    if word in wids:
                        cnt[wids[word]] += 1
            cnts.append(cnt)
            post_count += 1
            review_num += 1
            label = 1
            test_data.append( (review_num, list(cnts), (int(label))) )
            ################## initializeation
            sum_line = ""
            complete_flag = 0
            label=-1
            positive_vote = 0
            negative_vote = 0
            cnts = []
        else:
            #line = line.replace('\n','')
            comment_line = line.split("|||")
            #filter out automatical message
            comment_line[4] = comment_line[4].replace('\ @@@','')
            comment_line[4] = comment_line[4].replace('@@@','')
            # decision message (Merged or Abandoned)
            import VotingMessage
            (score,comment_line[4]) = VotingMessage.message(comment_line[4])
            #print(score+"   "+comment_line[4])
            if score == "99":
                positive_vote = positive_vote + 1
                sum_line = sum_line + " @@@mer@@@ "
                #sys.stdout.write("AA"+"\n")
                label = 1
                continue
            elif score == "88":
                sum_line = sum_line + " @@@aba@@@ "
                #sys.stdout.write("RR"+"\n")
                label = 0
                continue
            #else:
            #    print "error"
            #    sys.exit(1)
            #identify automatical comment for voting
            if (score == "2") or (score == "1"):
                positive_vote = positive_vote + 1
                sum_line = sum_line + " @@@pos@@@ "
            elif (score == "-2") or (score == "-1"):
                sum_line = sum_line + " @@@neg@@@ "
                negative_vote = negative_vote + 1
            #identify automatical comment for patch conflict
            if score == "-98":
                sum_line = sum_line + " @@@con@@@ "
                continue
            #identify automatical comment for patch submission
            if score == "-99":
                continue
            ################ sum_line means the combined all comments
            sum_line = sum_line + comment_line[4]
            continue
        #end{combine all comment in one review, then input to words}
            #cnt = defaultdict(lambda: 0)
            #for word in nltk.word_tokenize(sum_line):
            #    word = word.lower()
            #    if word in wids:
            #        cnt[wids[word]] += 1
            #cnts.append(cnt)
            #post_count += 1

# Create a logistic regression model
VOCAB_SIZE = len(wids)
model = Model()
sgd = SimpleSGDTrainer(model)
model.add_lookup_parameters("w", (VOCAB_SIZE, 1))
model.add_parameters("b", (1))

# A function to predict and evaluate one instance
def predict_one(cnt):
  # Create the computation graph
  renew_cg()
  y_pred_input = [ parameter(model["b"]) ]
  for review_num, word, val in cnt.items():
    y_pred_input.append( lookup(model["w"], word) * scalarInput(float(val)) )
  y_pred_input = esum(y_pred_input)
  y_pred = logistic(y_pred_input)
  return y_pred

# A function to evaluate a prediction
def eval_one(y_pred, label):
  y = scalarInput(label)
  #print label
  loss = binary_log_loss(y_pred, y)
  #print str(y_pred.scalar_value()) + "___" + str(label)
  answer = 1 if y_pred.scalar_value() > 0.5 else 0
  correct = 1 if answer == label else 0
  return loss, correct

# Perform training, and testing at every iteration
for epoch in range(NUM_EPOCHS):
  # Training
  train_loss, train_correct, train_num = 0.0, 0.0, 0
  for review_num, cnt, label in train_data:
    my_pred = predict_one(cnt)
    my_loss, my_correct = eval_one(my_pred, label)
    #print "aaa"+str(my_loss.scalar_value())
    train_loss += my_loss.scalar_value()
    train_correct += my_correct
    train_num += 1
    my_loss.backward()
    sgd.update(1.0)

  #print("epoch %d: train -- l=%f, c=%f" % (epoch+1, train_loss, train_num))
  print("epoch %d: train -- l=%f, c=%f" % (epoch+1, train_loss/train_num, train_correct/train_num))


  # Testing, same as training but without backward and update
  #for(int post_count = 0; post_count < 11; post_count++):
  for post_count in range(0, 1000):
    test_loss, test_correct, test_num = 0.0, 0.0, 0
#    for x, y in test_data:
#      if len(x) == 0:
#        print "length zero error"
#        sys.exit(1)
    for cnt, label in [(x[min(post_count, len(x)-1)], y) for x, y in test_data]:
      my_pred = predict_one(cnt)
      my_loss, my_correct = predict_one(my_pred, label)
      test_loss += my_loss.scalar_value()
      test_correct += my_correct
      test_num += 1
    print("epoch %d: test @ %d -- l=%f, c=%f" % (epoch+1, post_count, train_loss/train_num, train_correct/train_num))
  # Print the scores
