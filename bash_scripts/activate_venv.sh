#!/bin/bash

# bash file to activate a python virtual environment
# usage from command line: '$ source work_environment.sh'

ENVIRONMENT_NAME=<your_project_name>
PROJECT_NAME=$ENVIRONMENT_NAME

# activate virtual environment
source ~/Environments/$ENVIRONMENT_NAME/bin/activate
echo "Successfully activated $PROJECT_NAME virtual environment."

# move into the project's working directory
cd ~/Projects/$PROJECT_NAME
pwd
echo "Successfully moved to $PROJECT_NAME working directory."
