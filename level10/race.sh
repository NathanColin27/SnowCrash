#!/bin/sh

echo "yes" > /tmp/file;
~/level10 /tmp/file ;
rm /tmp/file;
ln -sL ~/token /tmp/file;
~/level10 /tmp/file;