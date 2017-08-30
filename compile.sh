
#!/bin/bash

rm -rf modules
mkdir modules
touch modules/.gitignore

# Module dependencies come from --module-path
echo 'compilation du module com.norsys (Main.java)' 

# compilation avec find
javac --module-path lib                       \
        $(find src/com.norsys -name "*.java") \
       -d modules/com.norsys
