#!/bin/sh

case "" in
  ${PRIMARY_KEYMAP}) echo "missing primary keymap config" && CFG_CHK=1 ;;
  ${SECONDARY_KEYMAP}) echo "missing secondary keymap config" && CFG_CHK=1 ;;
esac; case ${CFG_CHK} in 1) exit ;; esac

FILE="/tmp/delc.conf" # generate file to monitor layout
touch $FILE

case `cat $FILE` in
  "")
    setxkbmap ${PRIMARY_KEYMAP}
    echo 0 > $FILE
    printf "initialized file at ${FILE}.\nswitched to primary keymap (${PRIMARY_KEYMAP}).\n"
    ;;
  "0")
    setxkbmap ${SECONDARY_KEYMAP}
    echo 1 > $FILE
    printf "switched to secondary keymap (${SECONDARY_KEYMAP}).\n"
    ;;

  "1")
    setxkbmap ${PRIMARY_KEYMAP}
    echo 0 > $FILE
    printf "switched to primary keymap (${PRIMARY_KEYMAP}).\n"
    ;;
esac
