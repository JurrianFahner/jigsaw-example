# Jigsaw

The source come originates from http://openjdk.java.net/projects/jigsaw/quick-start

You can run all java commands from a docker container by mounting the cloned git files into the container (so you don't need to install jdk 9 on your computer):
```bash
docker run -it -v "$PWD":/home -w /home openjdk:9 bash
```

## Create modules and run program
```bash
javac -d mods/org.astro src/org.astro/module-info.java src/org.astro/org/astro/World.java
javac -d mods --module-source-path src $(find src -name "*.java")
java --module-path mods -m com.greetings/com.greetings.Main
```

## Create and run jar 
```bash
jar --create --file=mlib/org.astro@1.0.jar         --module-version=1.0 -C mods/org.astro .
jar --create --file=mlib/com.greetings.jar         --main-class=com.greetings.Main -C mods/com.greetings .
java -p mlib -m com.greetings
```

## Link java files and run program
```bash
jlink --module-path $JAVA_HOME/jmods:mlib --add-modules com.greetings --output app
cd app
./bin/java -m com.greetings
```

## Create docker container with java and run the program from the container
```bash
docker build -t greetings .
docker run -it greetings
```

The resulting image (uncompressed) is around 166MB.