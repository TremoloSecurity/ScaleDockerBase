FROM tomcat:8-jre8

MAINTAINER Tremolo Security, Inc. - Docker <docker@tremolosecurity.com>
USER root

ADD ./scripts/*.sh /usr/local/tomcat/bin/

RUN useradd scale ; \
    chown -R scale:scale /usr/local/tomcat ; \
    rm -rf /usr/local/tomcat/webapps/* ; \
    mkdir /etc/scale ; \
    chown -R scale:scale /etc/scale ; \
    wget https://www.tremolosecurity.com/nexus/service/local/repositories/releases/content/tremolosecurity-unison/unison-lastmile-tomcat6/1.0.6/unison-lastmile-tomcat6-1.0.6.zip -O /tmp/lm.zip ; \
    unzip /tmp/lm.zip -d /tmp/ ; \
    mv /tmp/unison-lastmile-tomcat-6-1.0.6/*.jar /usr/local/tomcat/lib/ ; \
    rm -rf /tmp/unison-lastmile-tomcat6-1.0.6* ; \
    rm -rf /tmp/lm.zip


USER scale
ENV CATALINA_OPTS -XX:+UseParallelGC  -Djava.security.egd=file:/dev/./urandom
