FROM swiftlang/swift:latest

RUN apt-get -y update && apt-get install -y \
  build-essential \
  man \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN cd ~ \
  && git clone https://github.com/qutheory/vapor \
  && cd vapor \
  && git checkout swift-2-2 \
  && make install
