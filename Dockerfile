FROM tensorflow/tensorflow:2.1.0-py3-jupyter

RUN apt-get install -y git vim

RUN pip3 install -U pip \
 && pip3 install pandas seaborn
