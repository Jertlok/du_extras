#!/bin/sh

# assumes the image zip has been extracted in /tmp

emulator -verbose -skindir $ANDROID_BUILD_TOP/vendor/extras/emulator/skins/ -skin pixel_2_xl -writable-system -memory 4096 -gpu host -wipe-data
