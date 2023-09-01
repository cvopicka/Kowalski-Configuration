# root Folder (root user home) Changes

Updates to [timing service shell command](set-time.sh)

Problem: IF statement is not being interpreted properly.  Some googling got me a corrected syntax.  This had caused pings every 3 seconds out of the box.

- Fixed initial IF statement.
- Updated while to do proper flow control.
- Removed a lot of extra commented out materials and used Google translate to translate the Chineese language comments.
- Updated the frequency from 3 seconds to 30 seconds for failures.
- Updated the time server from a Chineese time server to a more regionally appropriate NTP server.  While the NTP protocol deals with latency and other cool delay problems I thought it best to help it with something not the other side of the world.
