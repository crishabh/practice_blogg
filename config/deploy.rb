# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'blogg'
set :repo_url, 'git@github.com:crishabh/practice_blogg.git'

set :deploy_to, '/home/deploy/blogg'
set :user, "ubuntu"
set :scm, :git
set :use_sudo, false
set :stage, :production
set :linked_files, fetch(:linked_files, []).push('config/database.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
# Default branch is :master

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app set :deploy_to, '/var/www/my_app'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
namespace :deploy do

# desc "Recreate symlink"
#   task :resymlink, :roles => :app do
#     run "rm -f #{current_path} && ln -s #{release_path} #{current_path}"
#   end
desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
end

after :publishing, 'deploy:restart'
after :finishing, 'deploy:cleanup'
after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
end
  # after 'deploy:setup' do
  #   run "#{sudo} chmod -R a+rwx {deploy_to}"
  #   # -- or --
  #   run "#{sudo} chown -R {deploy_user} {deploy_to}"
  # end




# after "deploy:create_symlink", "deploy:resymlink", "deploy:update_crontab"
end
