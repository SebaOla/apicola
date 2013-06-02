guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
	watch('config/application.rb')
	watch('config/environment.rb')
	watch('config/environments/test.rb')
	watch(%r{^config/initializers/.+\.rb$})
	watch('Gemfile')
	watch('Gemfile.lock')
	watch('spec/spec_helper.rb')
	watch(%r{features/support/}) { :cucumber }
end

guard 'rspec', :cli => '--color --format progress --fail-fast --drb', all_on_start: true, all_after_pass: false do
	watch(%r{^spec/.+_spec\.rb$})
	watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
	watch('spec/spec_helper.rb')  { "spec" }

	watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
	watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
	watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
	watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
	watch('config/routes.rb')                           { "spec/routing" }
	watch('app/controllers/application_controller.rb')  { "spec/controllers" }

	watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/requests/#{m[1]}_spec.rb" }

	watch(%r{^spec/acceptance/(.+)\.feature$})
	watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$})   { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'spec/acceptance' }
end

guard 'cucumber', :cli => '--drb' do
	watch(%r{^features/.+\.feature$})
	watch(%r{^features/support/.+$})													{ 'features' }
	watch(%r{^features/step_definitions/(.+)_steps\.rb$})			{ |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
	watch(%r{^app/controllers/api/v1/(.+)_(controller)\.rb$})	{ 'features' }
	watch(%r{^app/views/.+$})																	{ 'features' }
end
