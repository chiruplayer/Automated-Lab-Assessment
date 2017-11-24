

INSERT INTO Department (Dep_ID, name) VALUES(1, 'Dept of Computer Science and Engineering');

INSERT INTO Class (Sem , Section) Values(7 , 'A');
INSERT INTO Class (Sem , Section) Values(7 , 'B');

INSERT INTO Student (Stud_ID , name, email, phone, dep_ID ,Sem , Section ) VALUES('CS01' ,'AAA' , 'aaa@email.com' , ' 11111', 1 , 7 , 'A');
INSERT INTO Student (Stud_ID , name, email, phone, dep_ID ,Sem , Section ) VALUES('CS02' ,'BBB' , 'bbb@email.com' , ' 11212', 1 , 7 , 'A');
INSERT INTO Student (Stud_ID , name, email, phone, dep_ID ,Sem , Section ) VALUES('CS03' ,'CCC' , 'ccc@email.com' , ' 11321', 1 , 7 , 'A');
INSERT INTO Student (Stud_ID , name, email, phone, dep_ID ,Sem , Section ) VALUES('CS04' ,'DDD' , 'ddd@email.com' , ' 15341', 1 , 7 , 'B');
INSERT INTO Student (Stud_ID , name, email, phone, dep_ID ,Sem , Section ) VALUES('CS05' ,'EEE' , 'eee@email.com' , ' 17431', 1 , 7 , 'B');
INSERT INTO Student (Stud_ID , name, email, phone, dep_ID ,Sem , Section ) VALUES('CS06' ,'FFF' , 'fff@email.com' , ' 11733', 1 , 7 , 'B');
INSERT INTO Student (Stud_ID , name, email, phone, dep_ID ,Sem , Section ) VALUES('CS07' ,'GGG' , 'ggg@email.com' , ' 11364', 1 , 7 , 'B');

INSERT INTO Subject (Sub_ID , name, dep_ID , num_of_credits) VALUES ('14CS01' , 'Data Structures' , 1 , 4);
INSERT INTO Subject (Sub_ID , name, dep_ID , num_of_credits) VALUES ('14CS02' , 'Algorithms' , 1 , 4);

INSERT INTO Teacher (Teach_ID , name, email, phone, dep_ID ,sub_ID) VALUES('TCS01' ,'ASD' , 'asd@email.com' , ' 23421', 1 , '14CS01');
INSERT INTO Teacher (Teach_ID , name, email, phone, dep_ID ,sub_ID) VALUES('TCS02' ,'BEW' , 'bew@email.com' , ' 34563', 1 , '14CS02');

INSERT INTO Ques (Ques_ID , Ques_text , sub_ID , teacher_code , expected_output , Input) VALUES (1,'https://s3.us-east-2.amazonaws.com/sourcecodestore/Questions/Ques1.txt','14CS01' ,'TCS01' , 'https://s3.us-east-2.amazonaws.com/sourcecodestore/Questions/Ques1.out' , 'https://s3.us-east-2.amazonaws.com/sourcecodestore/Questions/Ques1.code');
INSERT INTO Ques (Ques_ID , Ques_text , sub_ID , teacher_code , expected_output , Input) VALUES (2,'https://s3.us-east-2.amazonaws.com/sourcecodestore/Questions/Ques2.txt','14CS01' ,'TCS01' , 'https://s3.us-east-2.amazonaws.com/sourcecodestore/Questions/Ques2.out' , 'https://s3.us-east-2.amazonaws.com/sourcecodestore/Questions/Ques2.code');
INSERT INTO Ques (Ques_ID , Ques_text , sub_ID , teacher_code , expected_output , Input) VALUES (1,'https://s3.us-east-2.amazonaws.com/sourcecodestore/Questions/Ques3.txt','14CS02' ,'TCS02' , 'https://s3.us-east-2.amazonaws.com/sourcecodestore/Questions/Ques3.out' , 'https://s3.us-east-2.amazonaws.com/sourcecodestore/Questions/Ques3.code');

INSERT INTO Student_Ans(Stud_ID , Ques_ID , sub_ID, submitted_ans) VALUES ('CS01',1,'14CS01','https://s3.us-east-2.amazonaws.com/sourcecodestore/Stu_ans/CS01_14CS01_Q1.code');
