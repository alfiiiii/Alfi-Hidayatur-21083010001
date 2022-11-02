#!/bin/bash

nama() {
    echo "siapa namamu?"
    read nama
}
npm() {
   echo "sebutkan npm mu :"
   read npm
   echo -e "hai $nama dengan npm $npm, selamat datang \n di praktikum sistem operasi yang seru ini ya!"
}

nama
npm
