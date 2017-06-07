#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

export STREAM_PID=$$

LOCAL_DEVICE="$1"
LOCAL_VOLUME="$2"
LOCAL_FILE="$3"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 3 ] 
then
    if [ "$HOCHOBDEMO" != "1" ]
    then
        Stream2Chromecast.sh "Juum" "1.0" "$ESPEAK_SPEECH_MP3"
    else
        Mpg123.sh "$ESPEAK_SPEECH_MP3"
    fi
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
