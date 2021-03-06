#!/bin/bash
echo "- Disabling mute sounds..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
FREESWITCH_CONFIG=/opt/freeswitch/etc/freeswitch/autoload_configs/conference.conf.xml

# <param name="muted-sound" value="conference/conf-muted.wav"/>
xmlstarlet ed --inplace -d '//param[contains(@name,"muted-sound")]' $FREESWITCH_CONFIG

# <param name="muted-sound" value="conference/conf-unmuted.wav"/>
xmlstarlet ed --inplace -d '//param[contains(@name,"unmuted-sound")]' $FREESWITCH_CONFIG
