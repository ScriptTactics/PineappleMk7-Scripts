# Mk7 Wardriving

# Kismet setup
After running the `dependencyInstall.sh` you will need to modify the kisment.conf file in `/etc/kismet/kismet.conf`

add this line in the `GPS` section: `gps=gpsd:host=localhost,port=2947`

## GPS Options

There are 2 options that you can use for your GPS module.
1. A USB GPS dongle
2. Android phone over Wi-Fi with GPSd Forwarder

# wardrive.sh

The current wardrive.sh script assumes you are using option 2.

## GPSd Forwarder

1. Download GPSd Forwarder for Android off of [Google Play](https://play.google.com/store/apps/details?id=io.github.tiagoshibata.gpsdclient) or [F-Droid](https://f-droid.org/packages/io.github.tiagoshibata.gpsdclient/)
2. Open the app and set the IP address to the address of your pineapple. (Default is 172.16.42.1)
3. Set the port to 9999

After you've donwloaded and setup the app. Connect your Android phone to the Pineapple via the management Wi-Fi.
Then run the script wardrive.sh


# Evil Portals

The folder of Evils Portals is pulled from here https://github.com/kleo/evilportals