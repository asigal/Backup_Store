#!/bin/bash +e

service jenkins stop
echo "Restore jenkins"
cd /mnt
if [ -d "jenkins" ]; then
   rm -fr "jenkins"
fi
mkdir jenkins
chmod 755 jenkins
chown jenkins:jenkins jenkins
cd /mnt/jenkins
tar xvf /var/lib/jenkins/backup_jenkins.tar
echo ======================
echo ls -ltr /mnt/jenkins
echo ======================
ls -ltr 

echo ================================================
echo Restart jenkins with:  sudo service jenkins start
echo =================================================
service jenkins start

