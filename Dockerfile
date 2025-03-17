
FROM gradle:7.6.1-jdk17 AS build
LABEL stage="build"

# Set the working directory inside the container
WORKDIR /home/gradle/app

# Copy the project files
# The --chown ensures files are owned by the gradle user in the container
COPY --chown=gradle:gradle . .

# Build the application using Gradle
RUN gradle clean build --no-daemon
RUN echo "Listing contents of /home/gradle/app/build/libs:" && ls -l /home/gradle/app/build/libs



FROM tomcat:9.0
LABEL stage="runtime"

# Expose the Tomcat server port
EXPOSE 8080

# Copy the WAR file from the build stage into Tomcat's webapps directory
COPY --from=build /home/gradle/app/build/libs/app-1.0.0.war /usr/local/tomcat/webapps/ROOT.war

# Run Tomcat
CMD ["catalina.sh", "run"]
