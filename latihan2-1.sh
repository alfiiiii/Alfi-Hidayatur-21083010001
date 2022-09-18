#!/bin/bash

echo -n "How old are you?"
read age

if [[ age -eq 0 ]]; then
   echo "You're newborn!"
elif [[ age -ge 20 ]]; then
   echo "You're an adult"
else
   echo "I don't know"
fi
