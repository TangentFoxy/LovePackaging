LovePackaging
=============

Scripts to create Love2d packages.

Currently working in Linux, untested in OS X (though it should work assuming you
have wget installed), and undeveloped for Windows.

Features
--------

- Builds executables for distribution on Windows, Mac, and Linux.
- Supports including extra files automatically.
- That's about it for now, but there are other features planned.

Installation
------------

Quick Guide:

1. Download the [latest release](https://github.com/Guard13007/LovePackaging/releases)!
2. Copy the files wherever you want, inside your own repo, outside, wherever!
3. Edit `config.sh` to specify options on how your packages will be built, including where the sources are and where to put the result.
4. Run `./build` for Linux / Mac OS X (OSX users need wget installed!!).
   No Windows version yet, sorry.

Contributing
------------

If you have any ideas or feature requests or bugfixes, please do create
issues, forks, pull requests, whatever. If there's something that be
done to make this better, I want to know about it!

Troubleshooting
---------------

Screenshots are great if you're reporting a problem. But in any case, common
problems listed below, all one of them!


#### What does "WARN: Mac packaging disabled." mean?

It means you have not edited the config file to specify that you have fixed the
Info.plist for your program. To fix this, first open the Info.plist file in the
same directory as this README file and edit the values on lines 43, 47, and 51.
They look like this by default:

```xml
	<string>YOUR.OWN.UNIQUE.IDENTIFIER</string>
	<key>CFBundleInfoDictionaryVersion</key>
	<string>6.0</string>
	<key>CFBundleName</key>
	<string>YOUR PROGRAM NAME</string>
	<key>CFBundlePackageType</key>
	<string>APPL</string>
	<key>CFBundleShortVersionString</key>
	<string>YOUR.CURRENT.VERSION</string>
```

An example of what they should look like:

```xml
	<string>com.example.package</string>
	<key>CFBundleInfoDictionaryVersion</key>
	<string>6.0</string>
	<key>CFBundleName</key>
	<string>Example Program by You</string>
	<key>CFBundlePackageType</key>
	<string>APPL</string>
	<key>CFBundleShortVersionString</key>
	<string>0.1.0</string>
```

Also line 71:

```xml
	<key>NSHumanReadableCopyright</key>
	<string>© YEAR You</string>
```

Something like:

```xml
	<key>NSHumanReadableCopyright</key>
	<string>© 2013-2014 Guard13007</string>
```

Once you have fixed that, open config.txt and change the line:

```bash
# Only change this if you know what you're doing (Read the README.md file).
macInfoPlistFixed=false
```

To this:

```bash
# Only change this if you know what you're doing (Read the README.md file).
macInfoPlistFixed=true
```

This will get rid of that error and start building Mac OS X packages. Sorry
this part isn't more streamlined (yet). I am a bit of a noob.
