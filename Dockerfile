FROM tensorflow/tensorflow:2.1.0-py3-jupyter

RUN apt-get install -y git vim wget unzip

RUN pip3 install -U pip \
 && pip3 install pandas seaborn \
 && pip3 install git+https://github.com/vienai8d/tfrecordutil

#
# Setup nbextensions.
#
RUN pip3 install jupyter_contrib_nbextensions \
 && jupyter contrib nbextension install --system \
 && jupyter nbextensions_configurator enable --system

#
# Setup vim_binding.
#
RUN git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding \
 && chmod 755 -R vim_binding \
 && mv vim_binding /usr/local/share/jupyter/nbextensions \
 && jupyter nbextension enable vim_binding/vim_binding --system
