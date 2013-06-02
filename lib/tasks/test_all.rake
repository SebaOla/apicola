namespace :t do
	task :prepare do
		Rake::Task['tmp:create'].execute
		sh 'clear && rake db:setup RAILS_ENV=test'
	end

	task :test do
		sh "bundle exec cucumber features"
		Rake::Task['spec'].execute
	end

	task :all => [:prepare, :test] do
		puts "Thanks"
	end

	task :guard => [:prepare] do
		sh "bundle exec guard"
	end
end