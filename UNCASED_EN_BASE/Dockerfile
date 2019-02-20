FROM phenompeople/python:3.6.3
LABEL maintainer="gaurav.vergiya@phenompeople.com"
LABEL project="bert-server"
EXPOSE 5555 5556
ARG APP_HOME=/opt/deployment
ARG PROJECT_NAME="bert-server"
ENV APP_HOME=${APP_HOME} \
    PROJECT_NAME=${PROJECT_NAME} \
    PROJECT_HOME=${APP_HOME}/${PROJECT_NAME}
ADD requirements.txt /
RUN yum install -y -q unzip && \
	pip3 install -r requirements.txt && \
    mkdir -p ${PROJECT_HOME}/models && \
    mkdir -p ${PROJECT_HOME}/tmp && \
    mkdir -p ${PROJECT_HOME}/logs
COPY start-server.sh ${PROJECT_HOME}/start-server.sh
ADD https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-12_H-768_A-12.zip ${PROJECT_HOME}/models
RUN unzip ${PROJECT_HOME}/models/uncased_L-12_H-768_A-12.zip -d ${PROJECT_HOME}/models && \
	chmod a+x  ${PROJECT_HOME}/start-server.sh
WORKDIR ${PROJECT_HOME}
ENTRYPOINT ["./start-server.sh" ]