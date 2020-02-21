FROM tensorflow/tensorflow:2.1.0-py3-jupyter

RUN pip3 install -U pip \
 && pip3 install pandas seaborn
