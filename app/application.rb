class Application
    def call(env)
        resp = Rack::Response.new

        t_1 = Time.now
        
        if t_1.hour <= 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end


end