# Automatic document filing

This tiny project allows to automatically scan, ocr and store documents to your document folder.
This allows you to index all your incoming letters in a very comfortable way.

I use a fujitsu fi-5110C auto feeding duplex color scanner for this purpose.
Most software (tesseract, sane, unpaper, ImageMagick, ghostscript) is also found on github.com.

I run a docker image on my server to which the scanner is attached to via usb cable and with direct access to the document folder on the NAS:
 docker run -d --privileged -v /dev/bus/usb:/dev/bus/usb -v documents:/documents scan

I know it is an ugly shell script, but it's nicely performing for two years now.

# todos
- provide config for other languages (currently for German)
- try to run script on Raspberry Pi to create a cheap standalone scanning system
- rewrite script in python
- automatic folder storage on filter words
