FROM tomcat:8.5-jdk11-openjdk

# Delete the default applications
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/docs
RUN rm -rf /usr/local/tomcat/webapps/examples
RUN rm -rf /usr/local/tomcat/webapps/manager
RUN rm -rf /usr/local/tomcat/webapps/host-manager

# Copy war file to container
COPY war/soap-ws.war /usr/local/tomcat/webapps

# Expose HTTP port 8080
EXPOSE 8080