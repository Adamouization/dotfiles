#!/bin/bash
# bash file to activate my python working environment
# to run type: 'source work_environment.sh'

# activate virtual environment
source ~/Environments/<environment_name>/bin/activate
echo "Successfully activated virtual environment."

# move into the project's working directory
cd ~/Projects/<dir>
pwd
echo "Successfully moved to <project_name> working directory."
