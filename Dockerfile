FROM ubuntu
ADD app /home/app
WORKDIR /home/app/
CMD ./bin/java -m com.greetings
