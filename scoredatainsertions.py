import MySQLdb
import random

host = "*****"
user = "*****"
pwd = "*****"
database = "*****"

db = MySQLdb.connect(host,user,pwd,database)

cursor = db.cursor()

for student in range(8,60):
	print "student "+str(student)
	cursor.execute("INSERT INTO Student_Ans(Stud_ID , Ques_ID , sub_ID, submitted_ans,score) VALUES ('CS0"+str(student)+"',1,'14CS01','https://s3.us-east-2.amazonaws.com/sourcecodestore/Stu_ans/CS01_14CS01_Q1.code',"+str(random.randint(0,15)
	)+");")
	cursor.fetchall()
	db.commit()

for student in range(61,120):
	print "student "+str(student)
	cursor.execute("INSERT INTO Student_Ans(Stud_ID , Ques_ID , sub_ID, submitted_ans,score) VALUES ('CS0"+str(student)+"',1,'14CS01','https://s3.us-east-2.amazonaws.com/sourcecodestore/Stu_ans/CS01_14CS01_Q1.code',"+str(random.randint(0,15)
	)+");")
	cursor.fetchall()
	db.commit()

db.close()
