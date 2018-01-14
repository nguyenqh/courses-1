FROM tensorflow/tensorflow:latest-gpu-py3
MAINTAINER nguyenqh <nguyenqh@ntu.edu.sg>

RUN apt-get update && apt-get install --no-install-recommends -y \
    wget axel \
    ffmpeg

RUN pip --no-cache-dir install --upgrade \
    keras keras_tqdm\
    jupyter
   
RUN pip --no-cache-dir install \
    xgboost bcolz pandas

# Image tools
RUN pip --no-cache-dir install \
    imageio
# Deep learning tools
RUN pip --no-cache-dir install gensim nltk


