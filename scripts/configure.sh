#!/bin/bash

# Bail for errors
set -e

# And we also want all apt activity to be unobtrusive
export DEBIAN_FRONTEND=noninteractive
export DEBIAN_PRIORITY=critical

### Package updates
##
# First, we install apt-transport-https; ask that we only fetch repos over https
apt update -o Acquire::http::AllowRedirect=false
apt install -qy -o Acquire::http::AllowRedirect=false apt-transport-https

apt-get -qy -o "Acquire::http::AllowRedirect=false" -o "Dpkg::Options::=--force-confdef" \-o "Dpkg::Options::=--force-confold" upgrade

# Support ansible
apt -qy install python

# Clean artifacts...
apt-get -qy autoclean
apt-get -qy autoremove