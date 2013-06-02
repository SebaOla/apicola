require 'rubygems'
require 'spork'

Spork.prefork do
	require 'simplecov'
	SimpleCov.start 'rails'

	require 'cucumber/rails'
	require 'cucumber/rspec/doubles'

	ActionController::Base.allow_rescue = false

	begin
		DatabaseCleaner.strategy = :transaction
	rescue NameError
		raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
	end

	require "json_spec/cucumber"

	def last_json
		page.source
	end

end

Spork.each_run do
	require 'factory_girl_rails'

	Dir["#{Rails.root}/app/models/**/*.rb"].each do |model|
		load model
	end

	Apicola::Application.reload_routes!
end
