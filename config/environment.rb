# Used to bypass certificate checking when downloading jquery from github using the gem jquery_rails
#require 'openssl'
#OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
Encoding.default_internal = Encoding::UTF_8
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Meublespecoste::Application.initialize!
