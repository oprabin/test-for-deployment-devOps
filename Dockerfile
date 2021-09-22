FROM maven:3.6.0-jdk-11-slim AS build-tool
RUN mkdir -p /home/app/test-for-deployment
COPY test-for-deployment-axon-project/ /home/app/test-for-deployment
RUN ls -la /home/app/test-for-deployment/
RUN mvn -f /home/app/test-for-deployment/pom.xml clean package -X

RUN ls -la /home/app/test-for-deployment/target/

CMD ["mvn", "--version"]







FROM axonivy/axonivy-engine:8.0 AS default-axon-engine
COPY --chown=ivy:ivy --from=build-tool /home/app/test-for-deployment/target/testfor-deployment-axon-project-1.0.0-SNAPSHOT.iar deploy/test-for-deployment-2/
# ADD --chown=ivy:ivy intermediate-step/testfor-deployment-axon-project-1.0.0-SNAPSHOT.iar deploy/test-for-deployment/

























# FROM axonivy/axonivy-engine:8.0 AS default-axon-engine
# RUN mkdir test-project
# COPY --from=build-tool /home/app/test-for-deployment/target/testfor-deployment-axon-project-1.0.0-SNAPSHOT.iar test-project/
# ADD --chown=ivy:ivy test-project/testfor-deployment-axon-project-1.0.0-SNAPSHOT.iar deploy



# RUN curl --version

# RUN curl -X POST \
#   http://localhost:8080/ivy/api/system/apps/test-for-deployment \
#   -u admin:admin \
#   -H 'X-Requested-By: curl' \
#   -F fileToDeploy=@test-for-deployment/testfor-deployment-axon-project-1.0.0-SNAPSHOT.iar

# RUN mkdir /usr/lib/axonivy-engine/deploy/test-for-deployment-axon-project


# iar lai deploy ma copy garne
# COPY default-axon-engine:/home/app/test-for-deployment/target/testfor-deployment-axon-project-1.0.0-SNAPSHOT.iar default-axon-engine:/usr/lib/axonivy-engine/deploy/test-for-deployment-axon-project/


# ADD default-axon-engine:/home/app/test-for-deployment/target/testfor-deployment-axon-project-1.0.0-SNAPSHOT.iar default-axon-engine:/usr/lib/axonivy-engine/deploy/test-for-deployment-axon-project/


# EXPOSE 8080
# ENTRYPOINT ["/usr/lib/axonivy-engine/bin/docker-entrypoint.sh"]

# RUN mkdir /usr/lib/axonivy-engine/deploy/test-for-deployment-axon-project/
# COPY --from=build-tool /home/app/test-for-deployment/target/testfor-deployment-axon-project-1.0.0-SNAPSHOT.iar /usr/lib/axonivy-engine/deploy/test-for-deployment-axon-project/








