#!/bin/bash

. /usr/local/tomcat/bin/downloadScale.sh


downloadComponent "Scale TOTP Application" \
                  "$SCALE_TOTP_SOURCE_URL"  \
                  "$SCALE_TOTP_WAR" \
                  "$SCALE_TOTP_PATH"
