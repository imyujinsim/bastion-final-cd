FROM imyujinsim/tomcat8888:v1
ADD server.xml /usr/local/tomcat/conf/server.xml
ADD redis-data-cache.properties /usr/local/tomcat/conf/redis-data-cache.properties
ADD index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp
ADD db.jsp /usr/local/tomcat/webapps/ROOT/db.jsp
ADD session.jsp /usr/local/tomcat/webapps/ROOT/session.jsp
WORKDIR /usr/local/tomcat/bin
CMD ["./catalina.sh", "run"]
