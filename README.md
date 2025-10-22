CI/CD Local Pipeline Simulation (Python Tests Automation)

CI/CD pipeline local simulation using scripts shell and automated tests in python

**Author** Mario Márquez Meneses
**GitHub** [@MECOAN](https://github.com/MECOAN)
**Project type:** DevOps/SRE Learning portfolio

## Overview
This repository demostrates a **complete CI/CD pipeline simulation** executed localy, built from scratch using **Python**, **Bash scripting** and **Pytest**.
It reproduces the same stages of a cloud-based CI system - setup, test and cleanup - all automated with structured logging, timestamp and reports.

This project shows proficiency in
- Automation scripting
- CI/CD workflow desing
- Logging and observation
- Python testing and reporting
- Git-based version control

Arquitecture
scripts/
    - setup_env.sh -> Creates and prepares the Python virtual environment
    - run_tests.sh -> Runs Pytest and generates HTML + TXT reports
    - clean_env.sh -> Cleans up environment and artifacts
    - logger.sh    -> Provides timestamp and colorized lgos
    - pipeline.sh  -> Orchestrates all stages:setup -> test -> clean

src/
    - app.py -> Core python logic
    
tests/
    - tests.py -> Automated unit tests using Python

# How to run locally
# Clone the repository
git clone https://github.com/MECOAN/local-ci-pipeline-demo.git
cd local-ci-pipeline-demo

# Execute the pipeline
bash scripts/pipeline.sh
