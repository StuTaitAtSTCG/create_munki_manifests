# Create Munki Manifests

This project will take a list of serial numbers in a file, and turn them into indervidual .xml manifest files to be used with munki. The .xml files will contain settings from the munk_manifest_template.xml.

## Steps

- Using Apple Remote Desktop, create a group of Macs
	- set the group to only display the serial numbers
	- export the window with field separator as tab
	- this will give you a file with a list of serial numbers
	- open it and copy the contents
- Within this project open the file Serials and paste in the serials we just copied and save
- Open the munki_manifest_template.xml and make suitable changes and save them
- Open the Terminal app and drag the Script.sh file into the window, followed by a space, and then drag the Serials file into the terminal window too
- Press return on the keyboard
- The Manifests folder should now contain all the .xml manifest files for each Mac serial you submited