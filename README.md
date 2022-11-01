# Draumaz's Epic Layout Changer

### Switch between two keyboard layouts on pure X using setxkbmap and a monitor bit.

## Functionality

On every execution, delc checks /tmp/delc.conf for a 0 or a 1. 

- If the file doesn't exist, it touches it and asks you to restart the program.
- If it's a 0, it sets SECONDARY_KEYMAP as active and echoes a 1 to the tmpfile.
- If it's a 1, it sets PRIMARY_KEYMAP as active and echoes a 0 to the tmpfile. 

## Usage

```PRIMARY="us intl" SECONDARY="ru" delc```
