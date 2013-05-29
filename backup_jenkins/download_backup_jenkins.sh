#!/bin/bash

echo -n "Enter tar backup file name (from remote 10.0.0.52): " 
read ANS
scp jenkins@10.0.0.52:$ANS ~/backup_jenkins/$ANS

