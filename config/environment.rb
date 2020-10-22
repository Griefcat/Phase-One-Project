require 'bundler/setup'
require "sinatra/activerecord"
Bundler.require

Dir[File.join(File.dirname(__FILE__), "../apps/models", "*.rb")].each {|f| require f}

ActiveRecord::Base.establish_connection(  adapter: 'sqlite3',  database: "db/my_database2.db")
#connection_details = YAML::load(File.open('config/database.yml'))
#ActiveRecord::Base.establish_connection(connection_details)
ActiveRecord::Base.logger = nil