#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import string
import re

my_data = open(sys.argv[1],"r")

firstFlag=0
line_data=""

for line in my_data:
	if ('|||' in line):
		line= re.sub(r'^zzz\s', r"", line)
		word = line.split("|||")

		#はじめて0がでてきたとき
		if (word[1]=="0") and (firstFlag==0):
			zero_line = line
			firstFlag=1
			continue;

		#0がでてくるのが2回目以降
		if (word[1]=="0") and (firstFlag==1):
			sys.stdout.write(zero_line + "\n")
			zero_line = line
		elif (word[1]!="0") and (firstFlag==1):
			sys.stdout.write(line)
	#else:
		#print "bbb" + line

#sys.stdout.write("\n" + zero_line + "\n")
