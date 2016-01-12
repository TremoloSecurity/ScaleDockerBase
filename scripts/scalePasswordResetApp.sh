#!/bin/bash

. /usr/local/tomcat/bin/downloadScale.sh


downloadComponent "Scale Password Reset Application" \
                  "$SCALE_PWD_RESET_SOURCE_URL"  \
                  "$SCALE_PWD_RESET_WAR" \
                  "$SCALE_PWD_RESET_PATH"
