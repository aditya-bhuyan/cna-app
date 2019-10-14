#!/bin/bash
# A Simple Shell Script To clean the boxes after CND-Java and most of the things after CNA-Java
# Aditya Pratap Bhuyan - 14th October 2019- Monday

#First clean git credentials
#Second Drop tables
#Third Clean Workpace folder
#CNA - we need to clean the tomee folders and ~/.bashrc last line appended.
#That couldn't be done by this script

#Removing Git Credentials

cd ~/workspace
#git config --unset credential.helper
git config --global --unset credential.helper

echo 'Git credentials cleared'

#Dropping Database Schema
# tracker_allocations_dev tracker_allocations_test tracker_backlog_dev tracker_backlog_test tracker_dev tracker_registration_dev tracker_registration_test tracker_test tracker_timesheets_dev  tracker_timesheets_test 

mysql -u root <<< "drop database tracker_allocations_dev;drop database tracker_allocations_test;drop database tracker_backlog_dev;drop database tracker_backlog_test;drop database tracker_dev;drop database tracker_registration_dev;drop database tracker_registration_test;drop database tracker_test;drop database tracker_timesheets_dev;drop database tracker_timesheets_test;" 

echo 'All Database Schemas dropped'

#Clean the workspace folder
rm -rf ~/workspace/

echo 'Workspace Folder content cleared'

