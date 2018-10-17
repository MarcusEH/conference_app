require 'unirest'

response = Unirest.get("localhost:3000/api/meetings")

p response.body
