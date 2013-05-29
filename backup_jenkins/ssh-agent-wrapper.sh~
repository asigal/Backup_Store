#!/bin/bash
WHO=`whoami`
echo $WHO
if [ "$WHO" != "jenkins" ] ; then
    echo You are $WHO, NOT USER jenkins, exiting
fi
SOCKET=/var/lib/jenkins/.ssh/agent.socket
ENV=/var/lib/jenkins/.ssh/agent.env
ssh-agent -a $SOCKET > $ENV

