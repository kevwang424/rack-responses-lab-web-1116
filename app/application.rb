class Application
  def call(env)
    resp = Rack::Response.new

    resp.write "The time now is #{Time.now}\n"
    time = Time.now

    if time.hour > 12 && time.hour < 25
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end


    resp.finish

  end
end
