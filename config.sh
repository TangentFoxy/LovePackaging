# The name of the resulting executables.
packageName="LovePackagingExample"
# Who made this? (Yes, change this to your name.)
author="Guard13007"
# Current version (of your program)
version="0.1"

###### Important! ONLY USE ABSOLUATE PATHS ######
# Where to place the resulting executables.
outputDir="$(pwd)/builds"
# Where the source code is. (This should be where your main.lua file is.)
sourceDir="$(pwd)/src"
# Files to include in ZIP packages. (ReadMe's, licenses, etc.)
includes="$(pwd)/includes"

# Where unzipped executables to make packages out of will be kept
win32Dir="$outputDir/win32src"
win64Dir="$outputDir/win64src"
osx10Dir="$outputDir/osx10src"

# Remove old packages?
removeOld=false

# Allow overwrite? NOT IMPLEMENTED
# If this is false, LovePackaging will quit if you try to build with the same version number twice.
allowOverwrite=false

# Auto-number builds? NOT IMPLEMENTED
# An "-buildN" will be added to the end of ZIP package names, with N being the Nth time this project was built.
autoNumberBuilds=false

# Only change this if you know what you're doing (Read the README.md file).
macInfoPlistFixed=false
