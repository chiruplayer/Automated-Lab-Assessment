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
	cursor.execute("INSERT INTO Student (Stud_ID , name, email, phone, dep_ID ,Sem , Section ) VALUES('CS0"+str(student)+"' ,'S"+str(student)+"' , 's"+str(student)+"@email.com' , '"+str(random.randint(11111,99999))+"', 1 , 7 , 'A');")
	cursor.fetchall()
	db.commit()

for student in range(61,120):
	print "student "+str(student)
	cursor.execute("INSERT INTO Student (Stud_ID , name, email, phone, dep_ID ,Sem , Section ) VALUES('CS0"+str(student)+"' ,'S"+str(student)+"' , 's"+str(student)+"@email.com' , '"+str(random.randint(11111,99999))+"', 1 , 7 , 'B');")
	cursor.fetchall()
	db.commit()

db.close()
