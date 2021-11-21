#!/bin/bash

source components/common.sh

Print "Install NodeJS"
yum install nodejs make gcc-c++ -y &>>$LOG
Stat $?

Print "Add Roboshop User"
id roboshop &>>$LOG
if [ $? -eq 0 ];then
  echo unser roboshop already exists
else
  useradd roboshop &>>$LOG
fi
Stat $?

Print "Download Catalogue"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>$LOG
Stat $?

Print "Remove Old Content"
rm -rf /home/roboshop/catalogue
Stat $?

Print "Extract Catalogue"
unzip -o -d /home/roboshop /tmp/catalogue.zip &>>$LOG
Stat $?

Print "Copy Content"
mv /home/roboshop/catalogue-main /home/roboshop/catalogue
Stat $?

Print "Install NodeJs dependencies"
cd /home/roboshop/catalogue
npm install --unsafe-perm &>>$LOG
Stat $?
