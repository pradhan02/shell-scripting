#!/bin/bash

source components/common.sh

Print "Download Repo"
curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/roboshop-devops-project/mongodb/main/mongo.repo
Stat $?

Print "Install MongoDB"
yum install -y mongodb-org &>>$LOG
Stat $?

Print "Update MongoDB Config"
sed -i -e 's/127.0.0.1/0.0.0.0/g' /etc/mongodb.conf &>>$LOG


Print "Start MongoDB"
systemctl start mongodb &>>$LOG

Print "Enable MongoDB Service"
systemctl enable mongodb &>>$LOG
Stat $?

Print "Download Schema"
curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip" &>>$LOG
Stat $?

Print "Extract Schema"
unzip -o -d /tmp mongodb.zip &>>$LOG
Stat $?

Print "Load Schema"
cd /tmp/mongodb-main
mongo < catalogue.js &>>$LOG
mongo < users.js  &>>$LOG
Stat $?




