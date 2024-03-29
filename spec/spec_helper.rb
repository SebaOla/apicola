require 'rubygems'
require 'spork'

Spork.prefork do

	require 'simplecov'
	SimpleCov.start 'rails'

	ENV["RAILS_ENV"] ||= 'test'
	require File.expand_path("../../config/environment", __FILE__)
	require 'rspec/rails'
	require 'rspec/autorun'

	Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

	RSpec.configure do |config|
		config.fixture_path = "#{::Rails.root}/spec/fixtures"
		config.use_transactional_fixtures = true
		config.infer_base_class_for_anonymous_controllers = false
		config.include Shoulda::Matchers::ActionController, type: :routing

		config.treat_symbols_as_metadata_keys_with_true_values = true
		config.filter_run focus: true
		config.filter_run_excluding slow: true
		config.run_all_when_everything_filtered = true
	end

end

Spork.each_run do
	require 'factory_girl_rails'

	Dir["#{Rails.root}/app/models/**/*.rb"].each do |model|
		load model
	end

	Apicola::Application.reload_routes!
end
