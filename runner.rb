require 'unirest'

response = Unirest.get("localhost:3000/api/allmeetings")

p response