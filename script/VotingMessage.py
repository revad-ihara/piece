#!/usr/bin/env python

# python extendedClassify.pl ./data/Discussion_eachComment_training.txt ./data/Discussion_eachComment_testing.txt

import sys
import re

def message(m):
	p1 = re.compile(r'Patch Set [0-9]*: Looks good to me, but someone else must approve') #
	p2 = re.compile(r'Patch Set [0-9]*: Works for me')
	p3 = re.compile(r'Patch Set [0-9]*: Verified')
	p4 = re.compile(r'Patch Set [0-9]*: Sanity review passed') #
	p5 = re.compile(r'Patch Set [0-9]*: Code-Review\+1')
	p6 = re.compile(r'Patch Set [0-9]*: Workflow\+1')
	if p1.match(m) or p2.match(m) or p3.match(m) or p4.match(m) or p5.match(m) or p6.match(m):
		m = p1.sub('',m)
		m = p2.sub('',m)
		m = p3.sub('',m)
		m = p4.sub('',m)
		m = p5.sub('',m)
		m = p6.sub('',m)
		return ("1",m)

	# Score +2
	p7 = re.compile(r'Patch Set [0-9]*: Looks good to me, approved') #
	p8 = re.compile(r'Patch Set [0-9]*: Looks good to me')
	if p7.match(m) or p8.match(m):
		m = p7.sub('',m)
		m = p8.sub('',m)
		return ("2",m)

	p1 = re.compile(r"Patch Set [0-9]*: I would prefer that you didn'*t submit this") #
	p2 = re.compile(r'Patch Set [0-9]*: Sanity problems found') #
	p3 = re.compile(r'Patch Set [0-9]*: Code-Review-1')
	p4 = re.compile(r'Patch Set [0-9]*: Workflow-1')
	p5 = re.compile(r"Patch Set [0-9]*: Doesn'*t seem to work")
	p6 = re.compile(r"Patch Set [0-9]*: I would prefer that you didn'*t merge this")
	if p1.match(m) or p2.match(m) or p3.match(m) or p4.match(m) or p5.match(m) or p6.match(m):
		m = p1.sub('',m)
		m = p2.sub('',m)
		m = p3.sub('',m)
		m = p4.sub('',m)
		m = p5.sub('',m)
		m = p6.sub('',m)
		return ("-1",m)

	# Score -2
	p8 = re.compile(r'Patch Set [0-9]*: Do not merge') #
	p9 = re.compile(r'Patch Set [0-9]*: Do not submit') #
	p10 = re.compile(r'Patch Set [0-9]*: Major sanity problems found') #
	p11 = re.compile(r'Patch Set [0-9]*: Fails') #
	if p8.match(m) or p9.match(m) or p10.match(m) or p11.match(m):
		m = p8.sub('',m)
		m = p9.sub('',m)
		m = p10.sub('',m)
		return ("-2",m)

	#no target message
	p1 = re.compile(r'Uploaded patch set [0-9]*\.') #
	if p1.match(m):
		m = p1.sub('',m)
		return ("-99",m)

	# Conflict message
	p1 = re.compile(r'Your change could not be merged due to a path conflict\.\s+Please merge \(or rebase\) the change locally and upload the resolution for review\.')
	if p1.match(m):
		m = p1.sub('',m)
		return ("-98",m)

	# Abandoned OR Merged?
	p1 = re.compile(r'Change has been successfully cherry-picked')
	p2 = re.compile(r'Change has been successfully pushed')
	p3 = re.compile(r'Change has been successfully merged into the staging branch')
	p4 = re.compile(r'Change has been successfully merged into the git repository')
	if p1.match(m) or p2.match(m) or p3.match(m) or p4.match(m):
		m = p1.sub('',m)
		m = p2.sub('',m)
		m = p3.sub('',m)
		m = p4.sub('',m)
		return ("99",m)
	p1 = re.compile(r'Patch Set [0-9]*: Abandoned')
	if p1.match(m):
		m = p1.sub('',m)
		return ("88",m)

	return ("0",m)
