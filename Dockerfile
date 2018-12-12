# Pull base image
FROM jboss/wildfly

# Copy to images tomcat path
ARG WAR_NAME
ARG WAR_FILE_PATH
ARG APP_NAME

ADD /${WAR_FILE_PATH}/${WAR_FILE_PATH} /opt/jboss/wildfly/standalone/deployments/
RUN mv /opt/jboss/wildfly/standalone/deployments/${WAR_FILE_PATH} /opt/jboss/wildfly/standalone/deployments/${APP_NAME} 
