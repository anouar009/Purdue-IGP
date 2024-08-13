# Use an official Tomcat image with JDK 11
FROM tomcat:9-jdk11

# Remove default webapps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into the Tomcat webapps directory
COPY xyz_tech.war /usr/local/tomcat/webapps/

# Expose Tomcat port (changed to 8081)
EXPOSE 8081

# Start Tomcat
CMD ["catalina.sh", "run"]
