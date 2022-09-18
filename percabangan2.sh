#!/bin/bash

printf "Jajan apa yang kamu suka?\n"
printf "batagor?\n"
printf "cilor?\n"
printf "sotong?\n"

read jajan

case "$jajan" in
 "batagor")
   echo "batagor depan kampus enak"
   ;;
 "cilor")
   echo "cilor kantin recomended"
   ;;
 "sotong")
   echo "sotong pake bumbu pedes asin"
   ;;
 *)
   echo "Makanan yang kamu suka ga enak"
   ;;
esac
