#!/bin/bash

java --module-path lib:modules                 \
      --class-path lib/slf4j-simple-1.7.25.jar \
      -m com.norsys/norsys.main.Main
