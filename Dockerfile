FROM bjornno/ubuntu
RUN git clone https://github.com/bjornno/dockerdemo.git
WORKDIR /dockerdemo
RUN bundle 
CMD ["rackup"]

