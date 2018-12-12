# Pull base image
FROM jboss/wildfly

RUN pwd
RUN ls -al

# Copy to images tomcat path
ARG WAR_FILE_PATH
ADD /${WAR_FILE_PATH} /opt/jboss/wildfly/standalone/deployments/
