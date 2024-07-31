#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

yum update -y

if [ $? -ne 0 ]
then
    echo "Installation of updates...FAILURE"
    exit 1
else
    echo "Installation of updates...SUCCESS"
fi

yum install -y ansible-core

if [ $? -ne 0 ]
then
    echo "Installation of ansible...FAILURE"
    exit 1
else
    echo "Installation of ansible...SUCCESS"
fi

echo "version of ansible"
ansible --version
