# octopi-webcam-toggle
All the necessary bits to easily toggle your OctoPi's webcam from the web interface.

I love OctoPrint, but my poor Raspberry Pi B+ starts to struggle when uploading STL files to my printer's SD card, especially while it's also trying to stream from the webcam. However, I really liked the feature, and didn't want to fully disable it just to speed my uploads up a bit. When looking around for a solution, I came across some old issues on the OctoPrint GitHub, where people were having similar issues with enabling and disabling the mjpg_streamer. This was a good start, however it was mostly out of date and required some scripts that no longer (seem to) ship with OctoPi. Fortunately, the functionality itself was simply moved over into a handy service that can be initialized with settings in the `octoprint.txt` file, and toggled with a `sudo service webcamd` type command. Thus, I made some small changes and additions to bring this functionality into the web interface.

## Installation
- Add `webcam-toggle` to your `/home/pi/scripts/` directory
- Add the lines from `togglewebcam.yaml` into your `/home/pi/.octoprint/config.yaml` under the `system:` `actions:` section. (See below image)

![config.yaml example](https://raw.githubusercontent.com/naschorr/octopi-webcam-toggle/master/resources/config_yaml_example.png)
- (Optional) Update your `/boot/octopi.txt` to choose a webcam, and any arguments it might need. Feel free to use my `octopi.txt`. 
  - Note: Mine only uses the raspicam, and sets it to run at 1 fps. 

## Usage
![toggle webcam example](https://raw.githubusercontent.com/naschorr/octopi-webcam-toggle/master/resources/toggle_webcam_ui.png)

At the top of the page, just click on the 'System' dropdown. Then, hit the 'Toggle the Webcam' button to start/stop the webcam. Check out the 'Control' tab to see the changes.
