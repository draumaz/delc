# Draumaz's Epic Layout Changer

### Switch between two keyboard layouts on pure X using setxkbmap and a monitor bit.

## Functionality

On every execution, delc checks /tmp/delc.conf for a 0 or a 1. 

- If the file doesn't exist, it touches it and sets PRIMARY as active.
- If it's a 0, it sets SECONDARY as active and echoes a 1 to the tmpfile.
- If it's a 1, it sets PRIMARY as active and echoes a 0 to the tmpfile. 

## Usage

- Install delc somewhere in your path.

```PRIMARY="us intl" SECONDARY="ru" delc```
