# Configuration folders

Seems the initial version was out of date and still stored files here.  There was a klipper update that introduced links to folders instead.  I point this out because the updating of a second machine failed spectacularly until we discovered this and updated folder locations.

- `config -> /home/mks/klipper_config`
- `database -> /home/mks/.moonraker_database`
- `gcodes -> /home/mks/gcode_files`
- `logs -> /home/mks/klipper_logs`

Additional reading says it should be automagic but 1 of 2 printers this was not true.

Thanks to [this moonraker issue](https://github.com/Arksine/moonraker/issues/516) I resolved my problems.
