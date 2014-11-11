LovePackaging
=============

Scripts to create Love2d packages.

Should be working for Linux but is untested as I am too tired right now.
Dunno if the shell script is compatible with Mac OS X at all.
The Windows batch file hasn't been made at all really, not yet.

Installation
------------

ToDo: Explain how install and use.

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
