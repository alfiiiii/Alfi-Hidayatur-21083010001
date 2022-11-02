#!/bin/bash

sisi() {
   echo "panjang sisi :"
   read sisi
   luas
}
luas() {
   echo "luas persegi : sisi x sisi"
   echo luas=$((sisi*sisi))
   read luas
}
sisi

