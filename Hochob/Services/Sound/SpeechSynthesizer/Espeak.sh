#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export ESPEAK_PID=$$
export ESPEAK_ROOT=$HOCHOB_SERVER_SERVICES_SOUND_SPEECHSYNTHETIZER
export ESPEAK_BINARY=espeak
export ESPEAK_ARGUMENTS="--stdout"
export ESPEAK_PLAY="-w"
export ESPEAK_LANGUAGE="-ven+m5"
export ESPEAK_INPUT="No input has been provided"
export ESPEAK_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK
export ESPEAK_OUTPUT=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_OUTPUT

LOCAL_PLAY="$1"
LOCAL_LANGUAGE="$2"
LOCAL_TEXT="$3"

export PATH=$PATH:$ESPEAK_ROOT

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================


if [ $# -eq 3 ]
then
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        export ESPEAK_LANGUAGE="-ven+m5"
    elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
        export ESPEAK_LANGUAGE="-ves-la+m5"
    fi

    export ESPEAK_INPUT="$LOCAL_TEXT"

    if [ "$LOCAL_PLAY" = "on" ]; then
       $ESPEAK_BINARY $ESPEAK_LANGUAGE $ESPEAK_ARGUMENTS "$ESPEAK_INPUT" | tee $ESPEAK_OUTPUT | aplay -
    elif [ "$LOCAL_PLAY" = "off" ]; then
       $ESPEAK_BINARY $ESPEAK_PLAY $ESPEAK_OUTPUT $ESPEAK_LANGUAGE "$ESPEAK_INPUT"
    fi
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File