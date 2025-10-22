#!/bin/bash

timestamp(){
    date +"%Y-%m-%d %H:%M:%S"
}

log_info() {
  echo -e "\033[1;34m[$(timestamp)] [INFO]\033[0m $1"
}

log_success() {
  echo -e "\033[1;32m[$(timestamp)] [SUCCESS]\033[0m $1"
}

log_warn() {
  echo -e "\033[1;33m[$(timestamp)] [WARN]\033[0m $1"
}

log_error() {
  echo -e "\033[1;31m[$(timestamp)] [ERROR]\033[0m $1"
}