# Storage Saver

I was running out of memory so I added a USB flash drive I added the following to my crontab (`crontab -e`) to clean up files older than 7 days from my gcode folder

```0 0 * * * find /home/mks/gcode_files/ -maxdepth 1 -mtime +7 -type f -name "*.gcode" -exec mv "{}" /home/mks/gcode_files/sda1/ \; >/dev/null 2>&1```

## Explained

- Every day at midnight - `0 0 * * *`
- Find in /home/mks/gcode_files - `find /home/mks/gcode_files/`
  - NOT recursively - `-maxdepth 1`
  - Files - `-type f`
  - Older than 7 days - `-mtime +7`
  - Named *.gcode - `-name "*.gcode"`
  - Move them to /home/mks/gcode_files/sda1/ - `-exec mv "{}" /home/mks/gcode_files/sda1/ \;`
- No logging - `>/dev/null 2>&1`
