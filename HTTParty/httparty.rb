require 'httparty'

response = HTTParty.get('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup')

puts "responde code :#{response.code}"
puts "responde message :#{response.message}"
puts "responde headers :#{response.headers}"
puts "responde body :#{response.body}"