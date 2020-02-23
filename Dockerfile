FROM tensorflow/tensorflow:2.1.0-py3-jupyter

ENV PROTOC_VERSION 3.11.4

RUN apt-get install -y git vim wget unzip

#
# Protocol Buffers Installation
#
RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip \
 && unzip protoc-${PROTOC_VERSION}-linux-x86_64.zip -d protoc3 \
 && mv protoc3/bin/* /usr/local/bin/ \
 && mv protoc3/include/* /usr/local/include/ \
 && rm -rf protoc-${PROTOC_VERSION}-linux-x86_64.zip protoc3

RUN pip3 install -U pip \
 && pip3 install pandas seaborn
