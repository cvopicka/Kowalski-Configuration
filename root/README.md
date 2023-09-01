# root Folder (root user home) Changes

Updates to [timing service shell command](set-time.sh)

- I removed a lot of extra commented out materials and used Google translate to translate the Chineese language comments.
- I changed the frequency from 3 seconds to hourly.  I have NOT verified if the system has sufficient time drift to make that too long.  I would hope not.
- I changed the time server from a Chineese time server to a more regionally appropriate NTP server.  While the NTP protocol deals with latency and other cool delay problems I thought it best to help it with something not the other side of the world.

## Notes

While my bash is weak this should run once then exit but was running A LOT more than that hence the delay.  Perhaps something to do with the makerbase-time-monitor.service.
