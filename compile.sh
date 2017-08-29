
#!/bin/bash

rm -rf classes
mkdir classes
touch classes/.gitignore


###### CALCULATRICE.java

echo 'compilation de Calculatrice.java'
javac src/common/math/Calculatrice.java -d classes

echo 'compilation de Main.java' 
javac -classpath classes src/norsys/main/Main.java -d classes

