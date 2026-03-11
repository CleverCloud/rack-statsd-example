require "statsd-instrument"

class HelloWorld
  def call(env)
    StatsD.increment("hello_requests")
    [200, {"content-type" => "text/plain"}, ["Hello world!"]]
  end
end
