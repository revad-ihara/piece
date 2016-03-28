#!/usr/bin/python
# -*- coding: utf-8 -*-

# python 3-ClassifyIntoTrainingTesting.py Comment_description.txt

import sys
#import string
#import re

###########
#Training と Testingの閾値(この月以下がtraining)
Year=2012
Month=8
###########


my_data = open(sys.argv[1],"r")

for line in my_data:
	if ('|||' in line):
		line=line.lstrip()
		word = line.split("|||")

	if word[1]=="description":
		time = word[2].split(" ")
		day = time[0].split("-")

		if int(day[0])<Year:
			sys.stdout.write(day[0]+"-"+day[1]+" training"+"\n")
			f = open("Discussion_eachComment_training.txt", "a")
			f.write(line)
			f.close()
			status="training"
		elif (int(day[0])==Year) and (int(day[1])<=Month):
			sys.stdout.write(day[0]+"-"+day[1]+" training"+"\n")
			f = open("Discussion_eachComment_training.txt", "a")
			f.write(line)
			f.close()
			status="training"
		else:
			sys.stdout.write(day[0]+"-"+day[1]+" testing"+"\n")
			f = open("Discussion_eachComment_testing.txt", "a")
			f.write(line)
			f.close()
			status="testing"
	else:
		if status=="training":
			f = open("Discussion_eachComment_training.txt", "a")
			f.write(line)
			f.close()
		elif status == "testing":
			f = open("Discussion_eachComment_testing.txt", "a")
			f.write(line)
			f.close()
