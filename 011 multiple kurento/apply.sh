#!/bin/bash

# Pull in the helper functions for configuring BigBlueButton
source /etc/bigbluebutton/bbb-conf/apply-lib.sh

echo "- Enabling multiple Kurento servers..."
enableMultipleKurentos

