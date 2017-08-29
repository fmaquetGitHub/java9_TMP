#!/bin/bash

java -classpath lib/calculatrice.jar:classes/ norsys.main.Main

java -Xbootclasspath/p:lib/calculatrice.jar:classes/ norsys.main.Main
