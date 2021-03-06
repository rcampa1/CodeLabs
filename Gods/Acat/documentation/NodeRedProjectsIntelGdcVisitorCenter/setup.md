# Setup

## Startup

```sh
[  OK  ] Reached target Multi-User System.
         Starting Redis Server...
[  OK  ] Started Redis Server.

Poky (Yocto Project Reference Distro) 1.7.3 edison ttyMFD2

edison login: root
root@edison:~# 
```

## Wifi Configuration

```sh
root@edison:~# configure_edison --wifi
Configure Edison: WiFi Connection

Scanning: 9 seconds left

Configure Edison: WiFi Connection

Scanning: 1 seconds left

0 :     Rescan for networks
1 :     Exit WiFi Setup
2 :     Manually input a hidden SSID
3 :     Guest
..
11 :    IOT-Lab


Enter 0 to rescan for networks.
Enter 1 to exit.
Enter 2 to input a hidden network SSID.
Enter a number between 3 to 11 to choose one of the listed network SSIDs: 11
Is IOT-Lab correct? [Y or N]: Y
Password must be between 8 and 63 characters.
What is the network password?: *****************
Initiating connection to IOT-Lab. Please wait...
Attempting to enable network access, please check 'wpa_cli status' after a minute to confirm.
Done. Please connect your laptop or PC to the same network as this device and go to http://192.168.1.148 or http://edison.local in your browser.
Warning: SSH is not yet enabled on the wireless interface. To enable SSH access to this device via wireless run configure_edison --password first.
root@edison:~# 
```

## CodeLabs Cloning

```sh
root@edison:~# git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
Cloning into 'CodeLabs'...
remote: Counting objects: 14772, done.
remote: Compressing objects: 100% (82/82), done.
remote: Total 14772 (delta 49), reused 0 (delta 0), pack-reused 14682
Receiving objects: 100% (14772/14772), 10.14 MiB | 1.58 MiB/s, done.
Resolving deltas: 100% (8474/8474), done.
Checking connectivity... done.
root@edison:~#
```

```sh
root@edison:~# cd CodeLabs/
root@edison:~/CodeLabs# ls
Caracol        Dzibilchaltun  Kanki         Muyil       Tabasqueno  Xunantunich
Chacmultun     Edzna          KinichKaKMoo  Palenque    Tikal       scripts
Chicanna       EkBalam        Kohunlich     Qumarkaj    Tools
ChichenItza    Gods           LICENSE       README.md   Tulum
Coba           Hochob         LaRutaPuuc    SUMMARY.md  Uxmal
Documentation  Hormiguero     Mayapan       Sandbox     Xcambo
DosPilas       Kaminaljuyu    MixcoViejo    Seibal      Xpuhil
root@edison:~/CodeLabs# 
```

```sh
root@edison:~/CodeLabs# sh scripts/setup.sh Acat

Welcome to The IoT Learning Initiative CodeLabs Playground

Welcome to Acat Playground

Downloading http://iotdk.intel.com/repos/3.5/intelgalactic/opkg/i586//Packages.
Updated list of available packages in /var/lib/opkg/iotkit.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/all/Packages.
Updated list of available packages in /var/lib/opkg/iotdk-all.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/Packages.
Updated list of available packages in /var/lib/opkg/iotdk-core2-32.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/edison/Packages.
Updated list of available packages in /var/lib/opkg/iotdk-edison.
Upgrading mraa from 1.0.0-r0 to 1.5.1 on root.
Downloading http://iotdk.intel.com/repos/3.5/intelgalactic/opkg/i586//mraa_1.5.1_i586.ipk.
Removing package mraa-dev from root...
Removing package mraa-doc from root...
Removing obsolete file /usr/lib/libmraa.so.1.0.0.
Configuring mraa.
Upgrading upm from 0.7.0-r0 to 1.1.0 on root.
Downloading http://iotdk.intel.com/repos/3.5/intelgalactic/opkg/i586//upm_1.1.0_i586.ipk.
```