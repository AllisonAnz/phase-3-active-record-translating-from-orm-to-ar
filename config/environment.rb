ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])
require 'active_record'

require_relative '../lib/dog'

# Tells ActiveRecord where the database is located 
# Once eastablish_connection is ran, ActiveRecord::Base keeps it stored as a class 
# variable at ActiveRecord::Base.connection
ActiveRecord::Base.establish_connection(
  # adapter tells ActiveRecord which SQL software to use
  adapter: "sqlite3",
  # database tells ActiveRecord where the db is
  database: "./db/test.sqlite3"
)

