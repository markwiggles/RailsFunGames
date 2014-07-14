# require 'bundler'

# set :recipient, "ruby"


server "localhost", :web
set :user, "deployer"


task :hello do
  puts "hello #{fetch(:recipient, 'me')}"  #me is default

  execute "echo 'Hello World' > ~/hello"

  #invoke :goodbye
end

task :goodbye do
  puts "goodbye"
end

after :hello, :goodbye


# require 'bundler'
#
# # config valid only for Capistrano 3.1
# lock '3.2.1'
#
# set :application, 'rails_fun_games'
# set :repo_url, 'https://github.com/markwiggles/rails_fun_games.git'
#
# # Default branch is :master
# # ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
#
# # Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/home/markwigg/webapps/rails_fun_games'
#
# # Default value for :scm is :git
# set :scm, :git
#
# # Default value for :format is :pretty
# # set :format, :pretty
#
# # Default value for :log_level is :debug
# # set :log_level, :debug
#
# # Default value for :pty is false
# set :pty, true
#
# # Default value for :linked_files is []
# # set :linked_files, %w{config/database.yml}
#
# # Default value for linked_dirs is []
# # set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
#
# # Default value for default_env is {}
# # set :default_env, { path: "/opt/ruby/bin:$PATH" }
#
# # Default value for keep_releases is 5
# # set :keep_releases, 5
#
# role :web, "web463.webfaction.com"
# role :app, "web463.webfaction.com"
# role :db, "web463.webfaction.com", :primary => true
#
# set :user, "markwigg"
# set :scm_username, "markwiggles"
# set :use_sudo, false
#
#
#
#   namespace :deploy do
#     desc "Restart nginx"
#     task :restart do
#       run "#{deploy_to}/bin/restart"
#     end
#   end
#
#   # after :publishing, :restart
#   #
#   # after :restart, :clear_cache do
#   #   on roles(:web), in: :groups, limit: 3, wait: 10 do
#   #     # Here we can do anything such as:
#   #     # within release_path do
#   #     #   execute :rake, 'cache:clear'
#   #     # end
#   #   end
#   # end

