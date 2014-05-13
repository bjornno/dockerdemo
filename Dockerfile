FROM bjornno/ruby
ADD . /
RUN bundle install
ENV port 3000
EXPOSE 3000
CMD ["rackup", "-p 3000"]

