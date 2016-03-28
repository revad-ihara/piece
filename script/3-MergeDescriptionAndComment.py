#!/usr/bin/python
# -*- coding: utf-8 -*-

#python 3-MergeDescriptionAndComment qt_description.csv Discussion_eachComment.txt

import sys
import string
import re

########## Create dictionary for identifying description from ReviewId
my_data = open(sys.argv[1],"r")

FirstFlag=0
dict = {}
sum_message=""

for line in my_data:

	if  FirstFlag==0:
		word = line.split("|||")
		sum_message = sum_message+word[3].replace('\n',' ')
		FirstFlag=1
		continue

	if ('|||' in line) and (FirstFlag==1):
		dict[str(word[0])] = word[0]+"|||description|||"+word[1]+"|||"+word[2]+"|||"+sum_message
		#sys.stdout.write(word[0]+ "	"+dict[word[0]]+"\n")
		sum_message = ""

		word = line.split("|||")
		sum_message = sum_message+word[3].replace('\n',' ')
		#print word[0]+"@@@"+word[1]
	else:
		sum_message = sum_message+line.replace('\n',' ')


dict[str(word[0])] = sum_message
#sys.stdout.write(word[0]+ "	"+dict[word[0]]+"\n")
#sys.stdout.write("\n" + zero_line + "\n")


########## Merge description message and comment
my_comment = open(sys.argv[2],"r")

for line_comment in my_comment:
	word_comment = line_comment.split("|||")
	#print line_comment
	if len(line_comment) <= 1:
		line_comment="\n"
		f = open("test_Comment_description.txt", "a")
		f.write(line_comment)
		f.close()
	elif word_comment[1]=="1":
		word_comment[0]=word_comment[0].strip()
		output_line = "\n"+dict[str(word_comment[0])]
		f = open("Comment_description.txt", "a")
		f.write(output_line)
		line_comment=line_comment.lstrip()
		f.write(line_comment)
		f.close()
	else:
		f = open("Comment_description.txt", "a")
		line_comment=line_comment.lstrip()
		f.write(line_comment)
		f.close()
