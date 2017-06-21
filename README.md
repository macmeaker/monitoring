# Monitoring - My written check scripts
In my work and in private I work a lot with and on monitoring. 
I use Nagios, Icinga(1) and Icinga2. So I have to write some check scripts for new monitoring request.
I will use this repo for publishing my written check scripts

At the end you will find a list of the current check scripts.

If you have any questions feel free to contact me.

## Check scripts
### check_iis_apppool.bat
With this script you can monitor if an IIS Application Pool is "Started" or "Stopped".

Using: .\check_iis_apppool.bat Apppoolname <br>
Example: .\check_iis_apppool.bat WsusPool
