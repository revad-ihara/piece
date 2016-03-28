#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import string
#import math

#from collections import defaultdict

#my_probability = defaultdict(lambda: 0)

my_data = open(sys.argv[1],"r")


#words_total=0¥

firstFlag=0
line_data=""

for line in my_data:
	#if len(line) <= 1:
	#	continue
	#line= line.replace('\r',' @@@ ')

	if ('|||' in line) and firstFlag==1:
		#print "ccc  " + line_data
		#word = line_data.split("|||")
		print "zzz  " + line_data + "\n"
		#print word[0] + "\n"
		#if word[0]=="2":
		#	break
		#line_data= line.replace('\r',' @@@ ')
		#print ' \n '
		line_data = line
		#print "bbb" + line_data
		#print "ccc  " + line
		continue

	if firstFlag == 0: #はじめの一行が複数行の場合に出力しないようにするため．
		line_data = line_data + line.replace('\n',' @@@ ')
		#print "aaa  " + line_data
		#print "aaa  " + line_data
		firstFlag = 1

	if ('|||' not in line) and firstFlag==1: #はじめの一行以外で，
		if len(line) <= 1:
			continue
		line_data = line_data + line.replace('\n',' @@@ ')
		#print "ccc  " + line_data
		#print "ddd " + line
		#print "bbb  " + line_data
		#print "ddddd" + line_data
		#line_data = line_data + line.replace('\n',' @@@ ')
		#line_data = line_data + line.replace('\r',' @11@ ')

print "zzz  " + line_data + "\n"

	#	word = line_data.split("|||")

	#	line=""
	#
	#	word = line_data.split("|||")
	#	print word[4]
	#	if word[0]=="2":
	#		break
