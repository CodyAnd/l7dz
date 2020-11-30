FROM ubuntu:18.04
RUN apt-get update && apt-get install maven git -y
WORKDIR /root
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN mvn package -f /root/boxfuse-sample-java-war-hello/pom.xml
RUN mkdir /root/tmp
RUN cp /root/boxfuse-sample-java-war-hello/target/hello-1.0.war /root/tmp/hello-1.0.war
CMD /bin/bash
