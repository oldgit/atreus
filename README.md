# Atreus configure keyboard layout

Install *avrdude*: `brew install avrdude`

Setup keyboard configuration from the qmk layout: [atreus](https://config.qmk.fm/#/atreus/astar/LAYOUT)

Once happy, hit the compile button.

Once complete, download the hex firmware file by clicking on the *FIRMWARE* button.
Name the file `atreus-qwerty-mine.hex`, to overwrite the current layout.

Before flashing, set the keyboard into bootloader mode by pressing all 3 keys:
Fn+Esc+B keys at the same time.

The board will remain in bootloader mode for 8 secs.

Now run `./flash.sh`

Example output:

```bash
❯ ./flash.sh
avrdude: AVR device initialized and ready to accept instructions
avrdude: device signature = 0x1e9587 (probably m32u4)
avrdude: Note: flash memory has been specified, an erase cycle will be performed.
         To disable this feature, specify the -D option.
avrdude: erasing chip

avrdude: processing -U flash:w:atreus-qwerty-mine.hex:i
avrdude: reading input file atreus-qwerty-mine.hex for flash
         with 24172 bytes in 1 section within [0, 0x5e6b]
         using 189 pages and 20 pad bytes
avrdude: writing 24172 bytes flash ...
Writing | ################################################## | 100% 1.81 s
avrdude: 24172 bytes of flash written
avrdude: verifying flash memory against atreus-qwerty-mine.hex
Reading | ################################################## | 100% 0.18 s
avrdude: 24172 bytes of flash verified

avrdude done.  Thank you.
```

You are done.
