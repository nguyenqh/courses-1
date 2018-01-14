#!/bin/bash

docker run --runtime=nvidia -it -v `pwd`:/fastai -w /fastai --name fastai --rm -p 8888:8888  nguyenqh/fastai:py35 
