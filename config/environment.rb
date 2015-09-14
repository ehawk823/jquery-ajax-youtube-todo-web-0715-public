ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'dotenv'
Dotenv.load

require './lib/youtube.rb'
require './app'

# This is terrible and breaks ALL SECURITYz Not a long term solution
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
