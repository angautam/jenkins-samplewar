FROM angautam/tomcat

MAINTAINER anurag.gautam

ADD sample.war /usr/local/tomcat/webapps/

CMD ["catalina.sh", "run"]
