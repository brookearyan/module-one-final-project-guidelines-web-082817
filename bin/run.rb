require_relative '../config/environment.rb'
require_relative '../db/migrate/001_create_business_days.rb'
require_relative '../db/migrate/002_create_products.rb'
require_relative '../db/migrate/003_create_transactions.rb'
require_relative '../lib/CommandLineInterface.rb'

require 'pry'

new_cli = CommandLineInterface.new
new_cli.greet
new_cli.dept_info
