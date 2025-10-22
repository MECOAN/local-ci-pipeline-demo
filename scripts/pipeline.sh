#!/bin/bash

#Local CI/CD Pipeline Simulation

source scripts/logger.sh

PIPELINE_START=$(date +%s)
log_info "Starting local CI/CD pipeline"

#Cleaning previous environment
log_info "Cleaning older results"
bash scripts/clean_env.sh
if [$? -ne 0]; then
    log_error "Error with environment cleanup"
    exit 1
fi

log_info "Setting up environment"
bash scripts/setup_env.sh
if [ $? -ne 0 ]; then
    log_error "Error setting up the Environment"
    exit 1
fi

log_info "Running the tests"
bash scripts/run_tests.sh

PIPELINE_END=$(date +%s)
DURATION=$((PIPELINE_END - PIPELINE_START))
log_info "Total pipeline duration: ${DURATION}s"
