namespace :deploy do

	task :migrate, :env do |t, args|
		sh "git push #{args[:env]} master"
		sh "heroku run rake db:migrate --app pindiss-#{args[:env]}"
	end

	task :migrate_perf do
		Rake::Task['deploy:migrate'].invoke('perf')
	end

	task :migrate_qa do
		Rake::Task['deploy:migrate'].invoke('qa')
	end

	task :migrate_dev do
		Rake::Task['deploy:migrate'].invoke('dev')
	end

	task :migrate_local do
		Rake::Task['deploy:migrate'].invoke('local')
	end

	task :migrate_prod do
		sh "git push prod master"
		sh "heroku run rake db:migrate --app pindiss"
	end

	task :migrate_all do
		Rake::Task['deploy:migrate'].invoke('local')
		Rake::Task['deploy:migrate'].reenable
		Rake::Task['deploy:migrate'].invoke('dev')
		Rake::Task['deploy:migrate'].reenable
		Rake::Task['deploy:migrate'].invoke('qa')
		Rake::Task['deploy:migrate'].reenable
		Rake::Task['deploy:migrate'].invoke('perf')
	end

	task :fresh, :env do |t, args|
		sh "git push #{args[:env]} master"
		sh "heroku run rake db:drop --app pindiss-#{args[:env]}"
		sh "heroku run rake db:setup --app pindiss-#{args[:env]}"
	end

	task :fresh_perf do
		Rake::Task['deploy:fresh'].invoke('perf')
	end

	task :fresh_qa do
		Rake::Task['deploy:fresh'].invoke('qa')
	end

	task :fresh_dev do
		Rake::Task['deploy:fresh'].invoke('dev')
	end

	task :fresh_local do
		Rake::Task['deploy:fresh'].invoke('local')
	end

end

namespace :console do
	task :prod do
		sh 'heroku run rails console --app pindiss'
	end
	task :perf do
		sh 'heroku run rails console --app pindiss-perf'
	end
	task :qa do
		sh 'heroku run rails console --app pindiss-qa'
	end
	task :dev do
		sh 'heroku run rails console --app pindiss-dev'
	end
	task :local do
		sh 'heroku run rails console --app pindiss-local'
	end
end