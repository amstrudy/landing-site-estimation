# landing-site-estimation
NCSSM NASA SL 2017-2018

# Getting GPS data from the GlobalSat GPS unit serially through the terminal:

Check that the device is ttyUSB0:

`stty -F /dev/ttyUSB0 ispeed 4800`

`cat < /dev/ttyUSB0`
