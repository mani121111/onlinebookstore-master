# Use the official Tomcat image
FROM tomcat:9-jdk17

# Copy the WAR file from the target directory into Tomcat's webapps folde

# Apply permissions to the copied WAR file(s)
RUN  sudo apt update 
RUN sudo apt install openjdk-17-jdk
RUN sudo apt install maven
RUN sudo mvn package
RUN sudo chmod 755 /usr/local/tomcat/webapps/*.war


# Expose the Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
