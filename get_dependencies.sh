#!/bin/bash -x

pushd android/thirdparty/SDL2

wget https://www.libsdl.org/release/SDL2-2.0.7.zip
unzip -q SDL2-2.0.7.zip
mv SDL2-2.0.7 android/thirdparty/SDL2
rm SDL2-2.0.7.zip
rm -rf SDL2-2.0.7

# No need to copy SDLActivity.java because the version on the repo corresponds to SDL-2.0.5
# cd ../..
# cp external/SDL2/SDL2/android-project/src/org/libsdl/app/SDLActivity.java android/app/src/main/java/org/libsdl/app/
