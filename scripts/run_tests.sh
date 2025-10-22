#!/bin/bash

#Set the logs more legible and auditable
source scripts/logger.sh

log_info "Starting test execution"
source venv/bin/activate
pytest tests/ --html=reports/report.html --self-contained-html | tee reports/test_results.txt
TEST_EXIT=${PIPESTATUS[0]}

if [ $TEST_EXIT -eq 0 ]; then
    log_success "All tests passed successfully"
else
    log_error "Some tests failed. Check reports/test_results.txt"
fi

log_info "HTML report generated at reports/report.html"
exit $TEST_EXIT

#This way you can get the bassic report output
#echo "Star Tests"
#source venv/bin/activate

###This is to execute pytest with HTML report
#pytest tests/ --html=reports/report.html --self-contained-html --metadata ProjectName "Local DevOps Pipeline" --metadata Author "Mario Márquez"

###This is to generate the reports in the reports file
###pytest tests/ > reports/test_results.txt
###type reports\test_results.txt
#echo "Finish Tests"
#echo "The results are stored to reports/test_results.txt"