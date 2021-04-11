FROM tomcat:latest
COPY /target/addressbook.war /usr/local/tomcat/webaps/addressbook.war