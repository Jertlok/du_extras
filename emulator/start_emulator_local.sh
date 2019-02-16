#!/bin/sh

# assumes the image zip has been extracted in /tmp

~/Android/Sdk/emulator/emulator -verbose -skindir $ANDROID_BUILD_TOP/vendor/extras/emulator/skins/ -skin pixel_2_xl -writable-system -gpu host -wipe-data
