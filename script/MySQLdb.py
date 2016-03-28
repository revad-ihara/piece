#!/usr/bin/env python
# -*- coding: utf-8 -*-

import MySQLdb

if __name__ == "__main__":
    connector = MySQLdb.connect(
		host="localhost",
		db="qt",
		user="test",
		passwd="test",
		charset="utf-8")
    cursor = connector.cursor()

    cursor.execute("select ReviewId,CommentId from Comment")

    result = cursor.fetchall()

    for row in result:
        print "===== Hit! ====="
        print "code -- " + row[0].encode("utf-8")
        print "name -- " + row[1].encode("utf-8")
    cursor.close()
    connector.close()
