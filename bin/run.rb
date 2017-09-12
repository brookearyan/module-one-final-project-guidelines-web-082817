require_relative '../config/environment.rb'

def greet
  puts "Welcome to Retail Web, your place for store-line reporting."
end

greet

new_cli = CommandLineInterface.new
new_cli.greet
