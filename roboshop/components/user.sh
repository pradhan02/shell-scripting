#!/bin/bash

source components/common.sh
MSPACE=$(cat $0 | grep Print | awk -F '"' '{print $2}' | awk '{ print length }' | sort | tail -1)

COMPONENT_NAME=User
COMPONENT=user

NODEJS
CHECK_MONG_FROM_APP
CHECK_REDIS_FROM_APP














