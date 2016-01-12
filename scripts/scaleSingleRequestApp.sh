#!/bin/bash

. /usr/local/tomcat/bin/downloadScale.sh


downloadComponent "Scale Single Request Application" \
                  "$SCALE_SINGLE_REQUEST_SOURCE_URL"  \
                  "$SCALE_SINGLE_REQUEST_WAR" \
                  "$SCALE_SINGLE_REQUEST_PATH"
