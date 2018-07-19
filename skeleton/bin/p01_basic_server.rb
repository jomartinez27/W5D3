require 'rack'
require 'byebug'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-Type'] = 'text/html'
  # Is this right??
  if req.path == '/i'
    res.write('/i/love/app/academy')
  else
    res.write("Hello world!")
  end
  # debugger
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000
)
