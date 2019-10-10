## CentOS 7 with toughday

[![build_status](https://travis-ci.org/aem-design/docker-docker-toughday.svg?branch=master)](https://travis-ci.org/aem-design/docker-docker-toughday) 
[![github license](https://img.shields.io/github/license/aem-design/docker-toughday)](https://github.com/aem-design/docker-toughday) 
[![github issues](https://img.shields.io/github/issues/aem-design/docker-toughday)](https://github.com/aem-design/docker-toughday) 
[![github last commit](https://img.shields.io/github/last-commit/aem-design/docker-toughday)](https://github.com/aem-design/docker-toughday) 
[![github repo size](https://img.shields.io/github/repo-size/aem-design/docker-toughday)](https://github.com/aem-design/docker-toughday) 
[![docker stars](https://img.shields.io/docker/stars/aemdesign/toughday)](https://hub.docker.com/r/aemdesign/toughday) 
[![docker pulls](https://img.shields.io/docker/pulls/aemdesign/toughday)](https://hub.docker.com/r/aemdesign/toughday) 
[![github release](https://img.shields.io/github/release/aem-design/docker-toughday)](https://github.com/aem-design/docker-toughday)

This is docker image based on [aemdesign/oracle-jdk](https://hub.docker.com/r/aemdesign/oracle-jdk/) with toughday added

### Packages

Following packages that can be used for stress testing are added 

| File | Notes  |
| ---  | ---    |
| [toughday-6.1.jar](https://helpx.adobe.com/experience-manager/6-2/sites/developing/using/tough-day/_jcr_content/main-pars/download-section/download-1/file.res/toughday-6.1.jar) |  |
| [toughday2-0.9.2.jar](https://repo.adobe.com/nexus/content/repositories/releases/com/adobe/qe/toughday2/0.9.2/toughday2-0.9.2.jar) |  |
| [toughday2-0.2.1.jar](https://repo.adobe.com/nexus/content/repositories/releases/com/adobe/qe/toughday2/0.2.1/toughday2-0.2.1.jar) |  |

### Environment Variables

Following environment variables are available

| Name              | Default Value                 | Notes |
| ---               | ---                           | ---   |
| TEST_HOST         | "192.168.27.2"                | host address |
| TEST_PORT         | "4502"                        | port to use for host |
| TEST_JAR          | "toughday-6.1.jar"            | package to use for execution |
| TEST_MEM          | "-Xmx1024m"                   | memory to use when eecuting |

### Starting

To start a test of a local instance running on `192.168.27.2:4502` using test tool `toughday-6.1.jar` using 1GB ram use following command:

```bash
docker run \
-e "TEST_HOST=192.168.27.2" \
-e "TEST_PORT=4502" \
-e "TEST_JAR=toughday-6.1.jar" \
-e "TEST_JAVAOPTS=-Xmx1024m" \
aemdesign/toughday
``` 