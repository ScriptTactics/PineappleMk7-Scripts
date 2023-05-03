# Wi-Fi Pineapple Mk7

This repository is a work in progress. Check back regularly for updates


# Wardriving

The `Kismet` directory contains scripts to setup your Mk7 for wardriving using an Android Phone as a GPS device. The script can be setup to run at boot, or you can SSH into it over the management wifi and start the script up once you have a GPS lock.
## Kismet setup
After running the `dependencyInstall.sh` you will need to modify the kisment.conf file in `/etc/kismet/kismet.conf`

add this line in the `GPS` section: `gps=gpsd:host=localhost,port=2947`

## GPS Options

There are 2 options that you can use for your GPS module.
1. A USB GPS dongle
2. Android phone over Wi-Fi with GPSd Forwarder

## wardrive.sh

The current wardrive.sh script assumes you are using option 2.

## GPSd Forwarder

1. Download GPSd Forwarder for Android off of [Google Play](https://play.google.com/store/apps/details?id=io.github.tiagoshibata.gpsdclient) or [F-Droid](https://f-droid.org/packages/io.github.tiagoshibata.gpsdclient/)
2. Open the app and set the IP address to the address of your pineapple. (Default is 172.16.42.1)
3. Set the port to 9999

After you've donwloaded and setup the app. Connect your Android phone to the Pineapple via the management Wi-Fi.
Then run the script wardrive.sh


# Evil Portals

The folder of Evils Portals is pulled from here https://github.com/kleo/evilportals & https://github.com/wifiphisher/extra-phishing-pages 

In order to setup the Evil Portal on the Wifi Pineapple you must do the following.

1. Install the Evil Portal Plugin.

![plugin icon](/Screenshots/plugin.PNG)

![evil portal package](/Screenshots/EvilPortal.PNG)

![Add to sidebar](/Screenshots/Pin.PNG)

![Evil Portal Pin](/Screenshots/EvilPortalPin.PNG)

2. scp or sftp into the wifi pineapple and copy everything in the `Evil Portals/portals` directory into `~/portals` onto the pineapple. If the directory doesn't already exist, create one.

3. Reload the Evil Portals module.
You should now see all the portals

![Portal](/Screenshots/EvilPortalPage.PNG)

4. Activate a portal you wish to use.
5. Click Start Web Server, and then start.

![Activated](/Screenshots/Activated.PNG)

6. Click preview to view the "Evil Portal"

![Preview](/Screenshots/GoogleEx.PNG)

7. Then clone an AP or create your own AP and wait for a device to connect.