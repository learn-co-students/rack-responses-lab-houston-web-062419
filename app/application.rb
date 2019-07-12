class Application

  def call(env)
    resp = Rack::Response.new
 
    num_1 = Time.now.hour
 
    resp.write num_1
      
    if num_1.to_i >= 12
    
      resp.write("Good Afternoon!")
    else 
      resp.write("Good Morning!")
    end
     resp.finish

  end

end