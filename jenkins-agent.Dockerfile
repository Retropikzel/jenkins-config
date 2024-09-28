FROM jenkins/ssh-agent:latest
COPY --from=docker:dind /usr/local/bin/docker /usr/local/bin/
RUN groupadd docker -g 971
RUN usermod -aG docker jenkins
