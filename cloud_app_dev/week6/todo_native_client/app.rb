require  'net/http'
require 'json'
uri = URI("http://localhost/todos")

req = Net::HTTP::Get.new(uri) 
req ["Accept"] = "application/json"

res = Net::HTTP.start(uri.hostname, 4000) {
    |http|
	http.request(req)
	
	}
	
	for i in JSON.parse(res.body) 
	 output = "Title : #{i['title'] } ,"
	 if (i['completed'])
	     output += "Completed"
	 else
	     output += "Not Completed"
     end
	 puts (output)
	end
	
	
	
	