# Service Changes

Keeping the system lean for the low power processor.  Your mileage may vary.

## Disable Bluetooth Services

As far as I can tell the device has no bluetooth functionality so why run the service.

`sudo systemctl stop bluetooth`

`sudo systemctl disable bluetooth`

## Disable brltty Service

For my configuration I am not visually impaired and don't need access to the braille features IF they even work on this device.

`sudo systemctl stop brltty.service`

`sudo systemctl disable brltty.service`

## Time refresh

System reaches out to a non local time server every 3 seconds.  This is then reported to the log on a solid state storage device.  Will cause wear.  Granted I didn't see if the logs were written to the RAM disk.

`sudo nano /root/set-time.sh` See [set-time.sh](/root/set-time.sh)

`sudo systemctl restart makerbase-time-monitor.service`

## Webcam Service

Getting my webcam to work.

`sudo systemctl enable webcamd.service`

`sudo systemctl start webcamd.service`

Some config at system startup

`sudo nano /etc/rc.local` See [rc.local](/etc/rc.local)
