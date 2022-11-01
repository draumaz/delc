#!/bin/sh

case "" in
  ${PRIMARY}) echo "missing primary keymap config" && CFG_CHK=1 ;;
  ${SECONDARY}) echo "missing secondary keymap config" && CFG_CHK=1 ;;
esac; case ${CFG_CHK} in 1) exit ;; esac

FILE="/tmp/delc.conf"
touch $FILE

case `cat $FILE` in
  "")
    setxkbmap ${PRIMARY}
    echo 0 > $FILE
    printf "initialized file at ${FILE}.\nswitched to primary keymap (${PRIMARY}).\n"
    ;;
  "0")
    setxkbmap ${SECONDARY}
    echo 1 > $FILE
    printf "switched to secondary keymap (${SECONDARY}).\n"
    ;;

  "1")
    setxkbmap ${PRIMARY}
    echo 0 > $FILE
    printf "switched to primary keymap (${PRIMARY}).\n"
    ;;
esac
