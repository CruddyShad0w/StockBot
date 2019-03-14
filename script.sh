#!/bin/bash
echo "start"
echo $(date) >> my_log.log 
./algo.py >> my_log.log
