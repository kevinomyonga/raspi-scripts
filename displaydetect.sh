#!/bin/bash

# this is the config.txt parameter you want to change
MYTHING="overscan_scale"

# store the output of the tvservice commands
TVN=$(/opt/vc/bin/tvservice -n)
#TVS=$(/opt/vc/bin/tvservice -s)

# if the above command matches the HDMI display detected pattern
if [ $(echo "$TVN" | egrep -c "device_name") -gt 0 ]
then
    # we're plugged into HDMI
    OUTPUT="hdmi"
else
    # we're plugged into Composite
    OUTPUT="comp"
fi

# when plugged into HDMI, run this
if [ "$OUTPUT" == "hdmi" ]
then
    # if a line starts "my_parameter" without a comment
    if [ $(egrep -c "^$MYTHING" /boot/config.txt) -gt 0 ]
    then
        # comment out the parameter and reboot
        sed -i -e "s/^$MYTHING/#$MYTHING/g" /boot/config.txt
        reboot
    fi
fi

# when plugged into Composite, run this
if [ "$OUTPUT" == "comp" ]
then
    # if a line starts "#my_parameter" commented out
    if [ $(egrep -c "^#$MYTHING" /boot/config.txt) -gt 0 ]
    then
        # uncomment the parameter and reboot
        sed -i -e "s/^#$MYTHING/$MYTHING/g" /boot/config.txt
        reboot
    fi
fi

