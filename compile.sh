
#!/bin/bash

rm -rf modules
mkdir modules
touch modules/.gitignore

###### CALCULATRICE.java


echo 'compilation du module org.common (.java par .java)'

# compilation .java par .java
javac src/org.common/module-info.java \
      src/org.common/common/math/Calculatrice.java \
      -d modules/org.common

#compilation avec find
javac $(find src/org.common -name "*.java") \
      -d modules/org.common

###### MAIN.java

# Module dependencies come from --module-path
echo 'compilation du module com.norsys (Main.java)' 

# compilation .java par .java
javac --module-path modules/org.common       \
        src/com.norsys/module-info.java      \
        src/com.norsys/norsys/main/Main.java \
       -d modules/com.norsys

# compilation avec find
javac --module-path modules/org.common        \
        $(find src/com.norsys -name "*.java") \
       -d modules/com.norsys



###### CALCULATRICE.java + MAIN.java

# Compilation de tous les modules
echo 'compilation de tous les modules'
javac --module-source-path src $(find src -name "*.java") -d modules
