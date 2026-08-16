FROM tomcat:latest

WORKDIR /usr/local/tomcat/webapps

# Remove the default ROOT application
RUN rm -rf ROOT ROOT.war

# Copy the WAR built by Jenkins
COPY target/*.war ROOT.war

EXPOSE 8080
