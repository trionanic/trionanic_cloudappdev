require "singleton"

class AppConfig
   include Singleton   
    
  def load_config(filename)
    puts ("file was loaded")
  end	
  
end

conf1 = AppConfig.instance
conf1.load_config( "config.txt")
conf2 = AppConfig.instance

puts conf1 = conf2

# AppConfig.new

