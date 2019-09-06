FROM        aemdesign/oracle-jdk:1.0-jdk8

MAINTAINER  devops <devops@aem.design>

LABEL   os="centos" \
        container.description="docker nexus oss container" \
        version="1.0.0" \
        imagename="toughday" \
        test.command=" java -version 2>&1 | grep 'java version' | sed -e 's/.*java version "\(.*\)".*/\1/'" \
        test.command.verify="1.8"

ARG TEST_HOST="192.168.27.2"
ARG TEST_PORT="4502"
ARG TEST_JAR="toughday-6.1.jar"
ARG TEST_JAVAOPTS="-Xmx1024m"

ENV TEST_HOST="${TEST_HOST}" \
    TEST_PORT="${TEST_PORT}" \
    TEST_MEM="${TEST_MEM}" \
    TEST_JAVAOPTS="${TEST_JAR}"

WORKDIR /toughday

COPY packages/ .

CMD ["java","${TEST_MEM}","-jar","${TEST_JAR}", "-Dhostname=${TEST_HOST}","-Dport=${TEST_PORT}","${*}"]