# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "devadasv"
client_key               "#{current_dir}/devadasv.pem"
validation_client_name   "parliamentary-digital-service-validator"
validation_key           "#{current_dir}/parliamentary-digital-service-validator.pem"
chef_server_url          "https://api.chef.io/organizations/parliamentary-digital-service"
cookbook_path            ["#{current_dir}/../cookbooks"]
