FROM nvcr.io/nvidia/pytorch:19.03-py3

WORKDIR /workspace

RUN apt-get update && apt-get install -y libboost-all-dev \
                                          texlive-extra-utils \
                                          gnuplot \
                                          ghostscript

RUN python -m pip install pybind11 tensorflow==1.13.2 opencv-python

RUN git clone https://github.com/zhixinwang/frustum-convnet.git

# compile "ops"
WORKDIR /workspace/frustum-convnet/ops
RUN bash make.sh

WORKDIR /workspace
