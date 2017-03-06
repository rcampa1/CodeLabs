import voicerssurllib
import subprocess

voice = voicerssurllib.speech({
	'key': '9fbff2d35eb54b62998515ccbc656a70',
	'hl': 'en-us',
	'src': 'Hello World! Now we are talking!',
	'r': '0',
	'c': 'wav',
	'f': '44khz_16bit_stereo',
	'ssml': 'false',
	'b64': 'false'
})

file = 'voicerss.wav'

newFile = open (file, "wb")
newFile.write(voice['response'])
newFile.close()

player = subprocess.Popen(["aplay", file])