lock '3.7.1'
set :application, 'last_try'
set :branch, "master" 
set :repo_url, 'git@github.com:VitaliiHutsul/last_try'
set :deploy_to, "/home/deploy/last_try" 

set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log pids system tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads public/assets}

namespace :deploy do
  task :restart do
  on roles :all do
  execute "cd /home/deploy/last_try/current && rake assets:precompile RAILS_ENV=production"
  end
  on roles :all do
  execute "if [ -f '/home/deploy/last_try/shared/tmp/pids/sidekiq.pid' ] && [ -e /proc/$(cat '/home/deploy/last_try/shared/tmp/pids/sidekiq.pid') ]; then kill -9 `cat /home/deploy/last_try/shared/tmp/pids/sidekiq.pid`; cd /home/deploy/last_try/current && bundle exec sidekiq -e production -d; else cd /home/deploy/last_try/current && bundle exec sidekiq -e production -d; fi"
  end
  on roles :all do
  execute "if [ -f '/home/deploy/last_try/shared/pids/puma.pid' ] && [ -e /proc/$(cat '/home/deploy/last_try/shared/pids/puma.pid') ]; then kill -9 `cat /home/deploy/last_try/shared/pids/puma.pid`; cd /home/deploy/last_try/current && bundle exec puma --pidfile /home/deploy/last_try/shared/pids/puma.pid -e production -C config/puma.rb -d; else cd /home/deploy/last_try/current && bundle exec puma --pidfile /home/deploy/last_try/shared/pids/puma.pid -e production -C config/puma.rb -d; fi"
  end
  end
  after :publishing, :restart
end
