log_level        :info
log_location     STDOUT
chef_server_url  'https://192.168.33.110/organizations/test'
validation_client_name 'test-validator'
validation_key 'C:\\chef\\validator.pem'
client_key 'C:\\chef\\client.pem'
# I have a self signed cert so I need this in my environment.. in your environments
# hopefully you have better ssl setups..
ssl_verify_mode :verify_none
