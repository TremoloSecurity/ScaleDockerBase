#!/bin/bash

. /usr/local/tomcat/bin/downloadScale.sh


downloadComponent "Scale Register Application" \
                  "$SCALE_REGISTER_SOURCE_URL"  \
                  "$SCALE_REGISTER_WAR" \
                  "$SCALE_REGISTER_PATH"
