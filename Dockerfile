# Use the NVIDIA CUDA base image with development tools
FROM nvidia/cuda:12.6.1-cudnn-devel-ubuntu20.04
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ="America/New_York"

RUN apt update -y && apt upgrade -y \
        && apt-get install -y \
        python3 \
        python3-pip \
        wget \
        nano \
        git
RUN pip3 install -U pip && \
        pip3 install networkx==3.1 && \
        pip3 install jupyterlab && \
        pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124

EXPOSE 8888
ENTRYPOINT ["jupyter notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''"]
