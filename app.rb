# frozen_string_literal: true

require 'rack'

class App
  def call(env)
    request = Rack::Request.new(env)

    if request.post?
      puts "Content-Type: #{request.content_type}"
      puts "Body: #{request.body.read}"

      [200, { 'content-type' => 'text/plain' }, ['OK']]
    else
      [405, { 'content-type' => 'text/plain' }, ['Method Not Allowed']]
    end
  end
end
