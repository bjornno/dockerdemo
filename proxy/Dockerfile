FROM bjornno/ruby
ADD . /
RUN gem install em-proxy
RUN gem install ansi
expose 3000
CMD ["ruby", "/run_proxy.rb"]
