# Jigsaw

All commands and source code from http://openjdk.java.net/projects/jigsaw/quick-start

mkdir oracle-example
cd oracle-example/
mkdir -p src/com.greetings/com/greetings
apt update && apt install vim.nox
vi src/com.greetings/module-info.java
vi src/com.greetings/com/greetings/Main.java
mkdir -p mods/com.greetings
javac -d mods/com.greetings src/com.greetings/module-info.java src/com.greetings/com/greetings/Main.java
java --module-path mods -m com.greetings/com.greetings.M
mkdir -p src/org.astro/org/astro
touch src/org.astro/module-info.java
touch src/org.astro/org/astro/World.java
touch src/com.greetings/com/greetings/Main.java
touch src/com.greetings/module-info.j
vi src/org.astro/module-info.java 
vi src/org.astro/org/astro/World.java 
vi src/com.greetings/module-info.java 
vi src/com.greetings/com/greetings/Main.ja
mkdir -p mods/org.astro mods/com.greetings
javac -d mods/org.astro         src/org.astro/module-info.java src/org.astro/org/astro/World.java
javac --module-path mods -d mods/com.greetings         src/com.greetings/module-info.java src/com.greetings/com/greetings/Main.java
java --module-path mods -m com.greetings/com.greetings.Main
javac -d mods --module-source-path src $(find src -name "*.jav
mkdir m
jar --create --file=mlib/org.astro@1.0.jar         --module-version=1.0 -C mods/org.astro .
jar --create --file=mlib/com.greetings.jar         --main-class=com.greetings.Main -C mods/com.greeting
java -jar ./mlib/com.greetings.jar 
java -p mlib -m com.greetings
jlink --module-path $JAVA_HOME/jmods:mlib --add-modules com.greetings --output greetingsapp
cd greetingsapp/
./bin/java -m com.greetings
