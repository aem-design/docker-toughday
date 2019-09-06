FROM        aemdesign/oracle-jdk:latest

MAINTAINER  devops <devops@aem.design>

LABEL   os="centos" \
        container.description="docker nexus oss container" \
        version="1.0.0" \
        imagename="nexus" \
        test.command=" java -version 2>&1 | grep 'java version' | sed -e 's/.*java version "\(.*\)".*/\1/'" \
        test.command.verify="1.8"

ARG TEST_HOST="192.168.27.2"
ARG TEST_PORT="4502"
ARG TEST_JAR="toughday-6.1.jar"
ARG TEST_MEM="-Xmx1024m"

ENV TEST_HOST="${TEST_HOST}" \
    TEST_PORT="${TEST_PORT}" \
    TEST_MEM="${TEST_MEM}" \
    TEST_JAR="${TEST_JAR}"

WORKDIR /toughday

COPY *.jar .

CMD ["java","${TEST_MEM}","-jar","${TEST_JAR}", "-Dhostname=${TEST_HOST}","-Dport=${TEST_PORT}","${*}"]