#!/bin/bash

service jenkins stop
echo =======================
echo Stop Jenkins
echo ps -efl | grep jenkins
echo =======================

cd /mnt/jenkins
TARFILE=backup_jenkins_` date +"%y%m%d-%H%M"`.tar
tar cf /var/lib/jenkins/${TARFILE} . --exclude workspace
cp -p /var/lib/jenkins/${TARFILE} /var/lib/jenkins/backup_jenkins.tar
echo ====================
echo Current vbackups
echo ====================
ls -ltr /var/lib/jenkins/backup_jenkins_*
echo " "
echo =====================
echo Space left on disk
echo =====================
cd /var/lib/jenkins
df .

service jenkins start

