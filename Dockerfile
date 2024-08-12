# Use an official Tomcat image with JDK 17
FROM tomcat:9-jdk11

# Remove default webapps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into the Tomcat webapps directory
COPY abc_tech.war /usr/local/tomcat/webapps/

# Expose Tomcat port (changed to 8082)
EXPOSE 8082

# Start Tomcat
CMD ["catalina.sh", "run"]
