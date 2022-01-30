# Home power monitoring

[Image]
Image: https://blog.hypriot.com/downloads/
The default credentials for the image are user pirate with password hypriot.

[USB]
add USB: LABEL=DATA, fstype: ntfs

[slack]
https://api.slack.com/apps
To set up alerting in your Slack workspace, you’re going to need a Slack API URL. Go to Slack -> Administration -> Manage apps.
put the key in: /home/pi/slack.webhook

[openweathermap]
Request API key https://openweathermap.org/api 
put the key in /home/pi/openweathermap.apikey

[install/run]
wget https://raw.githubusercontent.com/Revenberg/powercontainers/master/alles.sh && chmod +x alles.sh ;./alles.sh << password>>
