require 'rack'

app = Proc.new do |env|
    res = Rack::Response.new
    req = Rack::Request.new(env)

    res.write(req.path)
    res.finish
end


Rack::Server.start(
        app: app,
        Port: 3000
)

# Rack::Server.start({
#     app: Proc.new do |env|
#       ['200', {'Content-Type' => 'text/html'}, ['hello world']]
#     end
#   })