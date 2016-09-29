# octopi-webcam-toggle
All the necessary bits to easily toggle your OctoPi's webcam from the web interface.

## Installation
- Add `webcam-toggle` to your `/home/pi/scripts/` directory
- Add the lines from `togglewebcam.yaml` into your `/home/pi/.octoprint/config.yaml` under the `system:` `actions:` section. (See below image)

![config.yaml example](https://raw.githubusercontent.com/naschorr/octopi-webcam-toggle/master/resources/config_yaml_example.png)
- (Optional) Update your `/boot/octopi.txt` to choose a webcam, and any arguments it might need. Feel free to use my `octopi.txt`. 
  - Note: Mine only uses the raspicam, and sets it to run at 1 fps. 

## Usage
![toggle webcam example](https://raw.githubusercontent.com/naschorr/octopi-webcam-toggle/master/resources/toggle_webcam_ui.png)

At the top of the page, just click on the 'System' dropdown. Then, hit the 'Toggle the Webcam' button to start/stop the webcam. Check out the 'Control' tab to see the changes.
