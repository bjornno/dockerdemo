
require 'rubygems'
require 'sinatra'
require 'yaml'
require 'json'
  require 'socket'

set :requests, 0
get '/' do
	port = ENV['PORT']
  settings.requests += 1
 # services = JSON.parse(ENV['VCAP_SERVICES'])["user-provided"].first["name"]
	ip_addr = Socket::getaddrinfo(Socket.gethostname,"echo",Socket::AF_INET)[0][3]

  "<h1>Routed to instance running on ip #{ip_addr} port #{port}</h1><h2>#{settings.requests} requests served on this node.</h2><br>"
end

#get '/env' do
#  ENV['VCAP_SERVICES']
#end
