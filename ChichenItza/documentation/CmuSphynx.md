# CMU Sphynx


```sh
root@edison:~# pip install cython
Collecting cython
/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/ssl_.py:318: SNIMissingWarning: An HTTPS requ.
  SNIMissingWarning
/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/ssl_.py:122: InsecurePlatformWarning: A true .
  InsecurePlatformWarning
  Downloading Cython-0.25.2-cp27-cp27m-manylinux1_i686.whl (5.8MB)
    100% |################################| 5.8MB 17kB/s 
Installing collected packages: cython
Successfully installed cython-0.25.2
/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/ssl_.py:122: InsecurePlatformWarning: A true .
  InsecurePlatformWarning
```

```sh
root@edison:~# git clone https://github.com/drejkim/led-speech-edison.git
```

```sh
root@edison:~# cd led-speech-edison/
root@edison:~/led-speech-edison# ls
LICENSE.md  README.md  bin  blink.py  cycle.py  images  lm  speech.py

```sh
root@edison:~/led-speech-edison# cd bin/
root@edison:~/led-speech-edison/bin# ls
installPocketsphinx.sh  installPyAudio.sh  installSphinxbase.sh
root@edison:~/led-speech-edison/bin# 
```

```sh
root@edison:~/led-speech-edison/bin# ./installSphinxbase.sh
```

```sh
#!/bin/sh

mkdir -p ../install
cd ../install

echo "Downloading sphinxbase..."
wget http://downloads.sourceforge.net/project/cmusphinx/sphinxbase/0.8/sphinxbase-0.8.tar.gz
tar -xvf sphinxbase-0.8.tar.gz
rm sphinxbase-0.8.tar.gz
cd sphinxbase-0.8

# Remove sphinxbase.c -- needs to be generated on the build for Edison
rm python/sphinxbase.c

echo "Installing sphinxbase..."
./configure
make
make install

echo "Installing Python bindings..."
cd python
python setup.py install

echo "Sphinxbase installed."
```

```sh
root@edison:~/led-speech-edison/bin# nano ~/.profile
export LD_LIBRARY_PATH=/usr/local/lib
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
```

```sh
root@edison:~/led-speech-edison/bin# source ~/.profile
```

```sh
root@edison:~/led-speech-edison/bin# ./installPocketsphinx.sh
```

```sh
#!/bin/sh

mkdir -p ../install
cd ../install

echo "Downloading pocketsphinx..."
wget http://sourceforge.net/projects/cmusphinx/files/pocketsphinx/0.8/pocketsphinx-0.8.tar.gz
tar -xvf pocketsphinx-0.8.tar.gz
rm pocketsphinx-0.8.tar.gz
cd pocketsphinx-0.8

# Remove pocketsphinx.c -- needs to be generated on the build for Edison
rm python/pocketsphinx.c

echo "Installing pocketsphinx..."
./configure
make
make install

echo "Installing Python bindings..."
cd python
python setup.py install

echo "Pocketsphinx installed."
```

```sh
root@edison:~/led-speech-edison/bin# ./installPyAudio.sh
```

```sh
#!/bin/sh

mkdir -p ../install
cd ../install

echo "Downloading PyAudio..."
wget -c http://people.csail.mit.edu/hubert/pyaudio/packages/pyaudio-0.2.8.tar.gz
tar zxf pyaudio-0.2.8.tar.gz
rm pyaudio-0.2.8.tar.gz
cd PyAudio-0.2.8

echo "Installing portaudio..."
wget -c http://www.portaudio.com/archives/pa_stable_v19_20140130.tgz
tar zxf pa_stable_v19_20140130.tgz
mv portaudio portaudio-v19
cd portaudio-v19
./configure
make
cd ..

echo "Building..."
export CFLAGS="-I `pwd`/portaudio-v19/include/ -L `pwd`/portaudio-v19/lib/.libs/"
python setup.py build --static-link
python setup.py install

echo "PyAudio installed."
```

```sh
root@edison:~/led-speech-edison# ls install/
PyAudio-0.2.8  pocketsphinx-0.8  sphinxbase-0.8
root@edison:~/led-speech-edison# 
```

## PortAudio

```sh
root@edison:~# wget http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
--2017-02-05 19:04:41--  http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
Resolving www.portaudio.com... 107.22.210.58
Connecting to www.portaudio.com|107.22.210.58|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1450572 (1.4M) [application/x-gzip]
Saving to: 'pa_stable_v190600_20161030.tgz'

100%[======================================>] 1,450,572    701KB/s   in 2.0s   

2017-02-05 19:04:43 (701 KB/s) - 'pa_stable_v190600_20161030.tgz' saved [1450572/1450572]

root@edison:~# 
```

```sh
root@edison:~# tar xvf pa_stable_v190600_20161030.tgz
```

```sh
root@edison:~# cd portaudio/
root@edison:~/portaudio# ls
CMakeLists.txt        bindings              doc          pablio
Doxyfile              build                 examples     portaudio-2.0.pc.in
Doxyfile.developer    clear_gitrevision.sh  fixdir.bat   qa
LICENSE.txt           cmake_support         fixfile.bat  src
Makefile.in           config.guess          include      test
README.configure.txt  config.sub            index.html   testcvs
README.txt            configure             install-sh   update_gitrevision.sh
SConstruct            configure.in          ltmain.sh
aclocal.m4            depcomp               missing
root@edison:~/portaudio# 
```

```sh
root@edison:~/portaudio# ./configure
root@edison:~/portaudio# make
root@edison:~/portaudio# make install
```