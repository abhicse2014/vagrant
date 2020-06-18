#!/bin/bash

#update centos with any patches
yum update -y --exclude=kernel

#Tools
yum install -y nc telnet nano git unzip screen

