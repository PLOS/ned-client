require 'ned_client'

NedClient.configure { |c| [
   c.debugging = false, c.host='http://localhost:8080/v1',
   c.username = 'akita', c.password = 'akita'] }

apiclient = NedClient::ApiClient.new

# header = {'Authorization'=> NedClient.configure.basic_auth_token}
# apiclient.default_headers = header

serviceapi = NedClient::ServiceApi.new(apiclient)
individualsapi = NedClient::IndividualsApi.new(apiclient)
typeclassesapi = NedClient::TypeclassesApi.new(apiclient)

puts serviceapi.config

# serviceapi.errorcodes

puts typeclassesapi.read 12
