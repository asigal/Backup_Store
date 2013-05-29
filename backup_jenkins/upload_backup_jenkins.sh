#!/bin/bash

echo -n Enter tar backup file name: 
read ANS
scp $ANS jenkins@10.0.0.52:backup_jenkins.tar

