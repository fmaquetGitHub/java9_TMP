
#!/bin/bash

rm -rf modules
mkdir modules
touch modules/.gitignore

###### CALCULATRICE.java

#echo 'compilation du module org.common.norsys'
#javac $(find src/org.common.norsys -name "*.java") \
#      -d modules/org.common.norsys


echo 'compilation du module com.norsys (Main.java)' 
#javac --module-path modules/org.common.norsys    \
#        $(find src/com.norsys -name "*.java") \
#       -d modules/com.norsys


#echo 'compilation du module com.autreboite (Main.java)' 
#javac --module-path modules/org.common.norsys    \
#        $(find src/com.autreboite -name "*.java") \
#       -d modules/com.autreboite



###### CALCULATRICE.java + MAIN.java

# Compilation de tous les modules
#echo 'compilation de tous les modules'
javac --module-source-path src $(find src -name "*.java") -d modules
