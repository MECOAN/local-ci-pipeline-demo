#!/bin/bash

#Set the logs more legible and auditable
source scripts/logger.sh

log_info "Cleaning environment"
rm -rf venv __pycache__ */__pucache__ reports/test_results.txt
log_success "Cleaned successfully"

#This way you can get the bassic report output
echo "Cleaning enviroment"
rm -rf venv __pycache__ */__pucache__ reports/test_results.txt
echo "Cleaned successfully"