# Use official Tomcat image
FROM tomcat:9-jdk11
LABEL maintainer="bhupesh@thegreatcoder.com"

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file from Maven target folder
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
