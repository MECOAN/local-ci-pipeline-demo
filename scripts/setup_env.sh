#!/bin/bash

#Set the logs more legible and auditable
source scripts/logger.sh

log_info "Setting up enviroment"
python -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt && log_success "Dependencies installed successfully" || log_error "Failed to install dependencies"
log_success "Enviroment ready"

#This way you can get the bassic report output
#echo "Setting up enviroment"
#python -m venv venv
#source venv/bin/activate
#pip install --upgrade pip
#pip install -r requirements.txt
#echo "Enviroment ready"