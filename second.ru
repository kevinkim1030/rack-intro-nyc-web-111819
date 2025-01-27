require 'rack'

class MyServer
    def call(env)
        return [200, {'Content-Type' => 'text/hmtl'}, pretty_response]
    end

    def pretty_response
        (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]

    end
end

run MyServer.new
