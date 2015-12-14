LovePackaging
=============

Scripts to create Love2d packages.

Currently working in Linux, untested in OS X (though it should work assuming you
have wget installed), and undeveloped for Windows.

Features
--------

- Builds executables for distribution on Windows, Mac, and Linux.
- Supports including extra files automatically.
- Can automatically number builds.
- Supports loading a specified config file. NOT ANYMORE. BROKEN RIGHT NOW. SORRY.
  (Note: Must be called from its own directory, but can access a config file from anywhere relative to there.)

Installation
------------

(Note that this guide may differ from the one in the latest release, refer to the ReadMe there for 100% correct info!)

Quick Guide:

1. Download the [latest release](https://github.com/Guard13007/LovePackaging/releases)!
2. Copy the files wherever you want, inside your own repo, outside, wherever!
3. Edit `build-config.sh` to specify options on how your packages will be built, including where the sources are and where to put the result.
4. Run `./build` for Linux / Mac OS X (OSX users need wget installed!!).
   No Windows version yet, sorry.

A quick note to mention: The build script must be run from its own directory. Everything in the config.sh should be absolute directories. If specifying a custom config script, the path must be a relative path from where the build script is located. This is kinda shitty, but I am kinda shitty, sorry.

Contributing
------------

If you have any ideas or feature requests or bugfixes, please do create
issues, forks, pull requests, whatever. If there's something that be
done to make this better, I want to know about it!

Troubleshooting
---------------

Feel free to submit an issue for any problem you have, also check [the forum](https://love2d.org/forums/viewtopic.php?f=4&t=79155&sid=2dfd50989af78c87dc75a9558e1ffb08) post for help.
