#!/usr/bin/env bash

find $HOME/wwl -name "*.*" | sed "s/\.html$//" | xargs -i echo mv {}.html {}.HTML | sed "s/oldboy/oldgirl/2" | sh