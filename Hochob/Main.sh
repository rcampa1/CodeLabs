#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

# Hochob Server Root Directory

cd ~/CodeLabs/Hochob/
export HOCHOB_ROOT=`pwd`

# Hochob Server Services

export HOCHOB_SERVER_SERVICES=$HOCHOB_ROOT/Services/

export HOCHOB_SERVER_SERVICES_CAMERA=$HOCHOB_SERVER_SERVICES/Camera/
export HOCHOB_SERVER_SERVICES_COMMUNICATIONS=$HOCHOB_SERVER_SERVICES/Communications/
export HOCHOB_SERVER_SERVICES_COMMUNICATIONS_MQTTCLIENT=$HOCHOB_SERVER_SERVICES_COMMUNICATIONS/MqttClient/
export HOCHOB_SERVER_SERVICES_IMAGE=$HOCHOB_SERVER_SERVICES/Image/
export HOCHOB_SERVER_SERVICES_ROBOT=$HOCHOB_SERVER_SERVICES/Robot/
export HOCHOB_SERVER_SERVICES_ROBOT_REMOTE=$HOCHOB_SERVER_SERVICES_ROBOT/Remote/
export HOCHOB_SERVER_SERVICES_SOUND=$HOCHOB_SERVER_SERVICES/Sound/
export HOCHOB_SERVER_SERVICES_SOUND_PLAY=$HOCHOB_SERVER_SERVICES_SOUND/Play/
export HOCHOB_SERVER_SERVICES_SOUND_SPEECHSYNTHETIZER=$HOCHOB_SERVER_SERVICES_SOUND/SpeechSynthetizer/
export HOCHOB_SERVER_SERVICES_STREAM=$HOCHOB_SERVER_SERVICES/Stream/
export HOCHOB_SERVER_SERVICES_STREAM_STREAM2CHROMECAST=$HOCHOB_SERVER_SERVICES_STREAM/Stream2Chromecast/
export HOCHOB_SERVER_SERVICES_VIDEO=$HOCHOB_SERVER_SERVICES/Video/
export HOCHOB_SERVER_SERVICES_VISITORS=$HOCHOB_SERVER_SERVICES/Visitors/

export PATH=$PATH:$HOCHOB_SERVER_SERVICES_CAMERA
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_COMMUNICATIONS
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_COMMUNICATIONS_MQTTCLIENT
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_IMAGE
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_ROBOT
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_ROBOT_REMOTE
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_SOUND
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_SOUND_PLAY
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_SOUND_SPEECHSYNTHETIZER
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_STREAM
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_STREAM_STREAM2CHROMECAST
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_VIDEO
export PATH=$PATH:$HOCHOB_SERVER_SERVICES_VISITORS

# Hochob Server Media Raw

export HOCHOB_SERVER_MEDIA=$HOME/HochobServerMedia/

export HOCHOB_SERVER_MEDIA_AREA=$HOCHOB_SERVER_MEDIA/Area/
export HOCHOB_SERVER_MEDIA_AREA_SOUTERN_MAYA_HIGHLANDS=$HOCHOB_SERVER_MEDIA_AREA/SouthernMayaHighlands
export HOCHOB_SERVER_MEDIA_AREA_CENTRAL_MAYA_LOWLANDS=$HOCHOB_SERVER_MEDIA_AREA/CentralMayaLowlands
export HOCHOB_SERVER_MEDIA_AREA_NORTHERN_MAYA_LOWLANDS=$HOCHOB_SERVER_MEDIA_AREA/NorthernMayaLowlands

export HOCHOB_SERVER_MEDIA_CORPORATE=$HOCHOB_SERVER_MEDIA/Corporate/
export HOCHOB_SERVER_MEDIA_CORPORATE_IMAGE=$HOCHOB_SERVER_MEDIA_CORPORATE/Image/
export HOCHOB_SERVER_MEDIA_CORPORATE_VIDEO=$HOCHOB_SERVER_MEDIA_CORPORATE/Video/

export HOCHOB_SERVER_MEDIA_MEMORIES=$HOCHOB_SERVER_MEDIA/Memories/
export HOCHOB_SERVER_MEDIA_MEMORIES_CAMERA=$HOCHOB_SERVER_MEDIA_MEMORIES/Camera/
export HOCHOB_SERVER_MEDIA_MEMORIES_DRAWING=$HOCHOB_SERVER_MEDIA_MEMORIES/Drawing/
export HOCHOB_SERVER_MEDIA_MEMORIES_VIDEO=$HOCHOB_SERVER_MEDIA_MEMORIES/Video/

export HOCHOB_SERVER_MEDIA_VISITORSCENTER=$HOCHOB_SERVER_MEDIA/VisitorsCenter/
export HOCHOB_SERVER_MEDIA_VISITORSCENTER_IMAGE=$HOCHOB_SERVER_MEDIA_VISITORSCENTER/Image/
export HOCHOB_SERVER_MEDIA_VISITORSCENTER_MUSIC=$HOCHOB_SERVER_MEDIA_VISITORSCENTER/Music/
export HOCHOB_SERVER_MEDIA_VISITORSCENTER_SOUND=$HOCHOB_SERVER_MEDIA_VISITORSCENTER/Sound/
export HOCHOB_SERVER_MEDIA_VISITORSCENTER_VIDEO=$HOCHOB_SERVER_MEDIA_VISITORSCENTER/Video/

# Hochob Server Media Executive

export AREA_SOUTERN_MAYA_HIGHLANDS=$HOCHOB_SERVER_MEDIA_AREA_SOUTERN_MAYA_HIGHLANDS
export AREA_CENTRAL_MAYA_LOWLANDS=$HOCHOB_SERVER_MEDIA_AREA_CENTRAL_MAYA_LOWLANDS
export AREA_NORTHERN_MAYA_LOWLANDS=$HOCHOB_SERVER_MEDIA_AREA_NORTHERN_MAYA_LOWLANDS

export CORPORATE_IMAGE=$HOCHOB_SERVER_MEDIA_CORPORATE_IMAGE
export CORPORATE_VIDEO=$HOCHOB_SERVER_MEDIA_CORPORATE_VIDEO

export MEMORIES_CAMERA=$HOCHOB_SERVER_MEDIA_MEMORIES_CAMERA
export MEMORIES_DRAWING=$HOCHOB_SERVER_MEDIA_MEMORIES_DRAWING
export MEMORIES_VIDEO=$HOCHOB_SERVER_MEDIA_MEMORIES_VIDEO

export VISITORSCENTER_IMAGE=$HOCHOB_SERVER_MEDIA_VISITORSCENTER_IMAGE
export VISITORSCENTER_MUSIC=$HOCHOB_SERVER_MEDIA_VISITORSCENTER_MUSIC
export VISITORSCENTER_SOUND=$HOCHOB_SERVER_MEDIA_VISITORSCENTER_SOUND
export VISITORSCENTER_VIDEO=$HOCHOB_SERVER_MEDIA_VISITORSCENTER_VIDEO

# Hochob Server Media Source Raw

export HOCHOB_SERVER_MEDIA_SOURCE=/tmp/HochobServerMediaSource/

export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA=$HOCHOB_SERVER_MEDIA_SOURCE/Camera/
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA/Fswebcam/
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM/*.jpg
export HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM/FswebcamImage.jpg

export HOCHOB_SERVER_MEDIA_SOURCE_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE/Image/
export HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING=$HOCHOB_SERVER_MEDIA_IMAGE/Drawing/
export HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING/*.jpg

export HOCHOB_SERVER_MEDIA_SOURCE_SOUND=$HOCHOB_SERVER_MEDIA_SOURCE/Sound/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND/SpeechSynthesizer/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER/Espeak/
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK/*.*
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK/EspeakSpeech.wav
export HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK/EspeakSpeech.mp3

export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO=$HOCHOB_SERVER_MEDIA_SOURCE/Video/
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO/Ffmpeg
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG/*.mp4
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_VIDEO=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG/FfmpegVideo.mp4
export HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_VIDEO_AUDIO=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG/FfmpegVideoAudio.mp4

export HOCHOB_SERVER_MEDIA_SOURCE_VISITORS=$HOCHOB_SERVER_MEDIA_SOURCE/Visitors/

# Hochob Server Media Source Executive

export FSWEBCAM_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM
export FSWEBCAM_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_ALLFILES
export FSWEBCAM_IMAGE=$HOCHOB_SERVER_MEDIA_SOURCE_CAMERA_FSWEBCAM_IMAGE

export DRAWING_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING
export DRAWING_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_IMAGE_DRAWING_ALLFILES

export ESPEAK_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK
export ESPEAK_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_ALLFILES
export ESPEAK_SPEECH=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_SPEECH
export ESPEAK_SPEECH_MP3=$HOCHOB_SERVER_MEDIA_SOURCE_SOUND_SPEECHSYNTHETIZER_ESPEAK_SPEECH_MP3

export FFMPEG_DIRECTORY=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG
export FFMPEG_ALLFILES=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_ALLFILES
export FFMPEG_VIDEO=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_VIDEO
export FFMPEG_VIDEO_AUDIO=$HOCHOB_SERVER_MEDIA_SOURCE_VIDEO_FFMPEG_VIDEO_AUDIO

# MQ Telemetry Transport 

MQTT_SERVER_ADDRESS=iot.eclipse.org
MQTT_SERVER_PORT=1883

# =============================================================================
# Functions
# =============================================================================

# Institution Identification through Google Calendar API
# If Google Calendar entry is registered then naming convention is
# YYYYMMDD-HHMMSS-InstitutionName
# If not, naming convention is
# YYYYMMDD-HHMMSS

institutionIdentification () {
  # If Institution Identification
    #
  # else
    #
  echo "Tbd"
}

# =============================================================================
# Main
# =============================================================================

# End of File
