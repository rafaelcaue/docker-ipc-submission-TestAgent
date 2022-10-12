FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
	git \
	gradle

WORKDIR /home
RUN git clone https://gitlab.com/intention-progression-competition/example-agents/test-agent.git
WORKDIR /home/test-agent
RUN git pull
RUN git checkout docker-version
RUN ./gradlew jar

WORKDIR /home

# default command
CMD ["bash"]



