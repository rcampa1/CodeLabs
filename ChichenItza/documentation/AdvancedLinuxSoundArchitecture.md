# Advanced Linux Sound Architecture

## Package Requirement Installation

```sh
root@edison:~# opkg install alsa-utils libportaudio2 libasound2 bison alsa-lib-dev alsa-utils-dev alsa-dev
```

## Play Devices Identification

> List all soundcards and digital audio devices

```sh
root@edison:~# aplay -l
```

```sh
...
...
card 1: dummyaudio [dummy-audio], device 0: 14 []
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 2: Device [USB PnP Sound Device], device 0: USB Audio [USB Audio]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
root@edison:~# 
```

## Record Devices Identification

> List all soundcards and digital audio devices

```sh
root@edison:~# arecord -l
```

```sh
...
...
card 1: dummyaudio [dummy-audio], device 0: 14 []
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 2: Device [USB PnP Sound Device], device 0: USB Audio [USB Audio]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 3: C525 [HD Webcam C525], device 0: USB Audio [USB Audio]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
root@edison:~/CodeLabs# 
```

## ALSA Configuration

> .asoundrc [ALSA Project Asoundrc](https://www.alsa-project.org/main/index.php/Asoundrc)

### Play & Record, One Single Device

> Device USB Audio Dongle

```sh
root@edison:~# nano ~/.asoundrc
pcm.!default sysdefault:Device
```

### Play & Capture, Two Devices

> Devices:
>
> > * USB Audio Dongle \(Play\)
> > * USB Camera with Microphone \(Record\)

```sh
root@edison:~# vi ~/.asoundrc
```

```sh
pcm.!default {
        type asym
        playback.pcm {
                type plug
                slave.pcm "hw:2,0"
        }
        capture.pcm {
                type plug
                slave.pcm "hw:3,0"
        }
}
```

## Arecord, Aplay

> arecord, aplay - command-line sound recorder and player for ALSA soundcard driver

```sh
root@edison:~# aplay /usr/share/sounds/alsa/Front_Center.wav
```

```sh
root@edison:~# arecord ~/test.wav
```

```sh
root@edison:~# aplay ~/test.wav
```



