#!/bin/bash

. /usr/share/conjure-up/hooklib/common.sh

services=("haproxy" \
          "mysql" \
          "ghost")

checkUnitsForErrors $services
checkUnitsForActive $services

exposeResult "Applications ready" 0 "true"
