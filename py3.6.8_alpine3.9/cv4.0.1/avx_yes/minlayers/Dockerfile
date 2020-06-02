#based on julianbei/alpine-opencv-microimage with some changes from ART
FROM python:3.6.8-alpine3.9

ENV CC /usr/bin/clang
ENV CXX /usr/bin/clang++

RUN echo -e '@edgunity http://nl.alpinelinux.org/alpine/edge/community\n\
@edge http://nl.alpinelinux.org/alpine/edge/main\n\
@testing http://nl.alpinelinux.org/alpine/edge/testing\n\
@community http://dl-cdn.alpinelinux.org/alpine/edge/community'\
  >> /etc/apk/repositories \

  && apk add --update --no-cache \
  # --virtual .build-deps \
      build-base \
      openblas-dev \
      unzip \
      wget \
      cmake \

      #Intel® TBB, a widely used C++ template library for task parallelism'
      libtbb@testing  \
      libtbb-dev@testing   \

      # Wrapper for libjpeg-turbo
      libjpeg  \

      # accelerated baseline JPEG compression and decompression library
      libjpeg-turbo-dev \

      # Portable Network Graphics library
      libpng-dev \

      # A software-based implementation of the codec specified in the emerging JPEG-2000 Part-1 standard (development files)
      jasper-dev \

      # Provides support for the Tag Image File Format or TIFF (development files)
      tiff-dev \

      # Libraries for working with WebP images (development files)
      libwebp-dev \

      # A C language family front-end for LLVM (development files)
      clang-dev \

      linux-headers \

  && pip install --upgrade pip \
  && pip install numpy \

  && mkdir -p /opt && cd /opt \
  && wget https://github.com/opencv/opencv/archive/4.0.1.zip \
  && unzip 4.0.1.zip \
  && rm -rf 4.0.1.zip \

  && mkdir -p /opt/opencv-4.0.1/build \
  && cd /opt/opencv-4.0.1/build \
  && cmake \
    -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D WITH_AVX=YES \
    -D WITH_FFMPEG=NO \
    -D WITH_IPP=NO \
    -D WITH_OPENEXR=NO \
    -D WITH_TBB=YES \
    -D BUILD_EXAMPLES=NO \
    -D BUILD_ANDROID_EXAMPLES=NO \
    -D INSTALL_PYTHON_EXAMPLES=NO \
    -D BUILD_DOCS=NO \
    -D BUILD_opencv_python2=NO \
    -D BUILD_opencv_python3=ON \
    -D PYTHON3_EXECUTABLE=/usr/local/bin/python \
    -D PYTHON3_INCLUDE_DIR=/usr/local/include/python3.6m/ \
    -D PYTHON3_LIBRARY=/usr/local/lib/libpython3.so \
    -D PYTHON_LIBRARY=/usr/local/lib/libpython3.so \
    -D PYTHON3_PACKAGES_PATH=/usr/local/lib/python3.6/site-packages/ \
    -D PYTHON3_NUMPY_INCLUDE_DIRS=/usr/local/lib/python3.6/site-packages/numpy/core/include/ \
    .. \
  && make \
  && make install \
  && rm -rf /opt/opencv-4.0.1 \

  && apk del --force-broken-world \
        build-base \
  #      openblas-dev \
        unzip \
        wget \
        cmake \
  #      libtbb@testing  \
        libtbb-dev@testing   \
  #      libjpeg  \
  #      libjpeg-turbo-dev \
  #      libpng-dev \
  #      jasper-dev \
  #      tiff-dev \
  #      libwebp-dev \
        clang-dev \
        linux-headers

