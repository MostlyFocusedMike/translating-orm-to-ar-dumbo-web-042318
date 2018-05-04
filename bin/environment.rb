require 'bundler/setup'
Bundler.require
require 'rake'
require 'active_record'

require_relative '../lib/dog'
require_relative 'sql_runner'

DB = ApplicationRecord.establish_connection(
      :adapter => "sqlite3",
      :database => "../db/dogs"
    )

  DB = ApplicationRecord.connection

  if ENV["ACTIVE_RECORD_ENV"] == "test"
    ActiveRecord::Migration.verbose = false
  end
