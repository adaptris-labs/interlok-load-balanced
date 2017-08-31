FROM adaptris/interlok:snapshot-alpine
EXPOSE 8081

WORKDIR /opt/interlok
ADD ant /opt/interlok/ant

RUN rm -f /opt/interlok/webapps/adapter-web-gui.war && \
    cd ant && \
    ant deploy && \
    rm -rf /root/.ivy2/cache/com.adaptris.ui && \
    rm -rf /opt/interlok/ant 

ADD config /opt/interlok/config
