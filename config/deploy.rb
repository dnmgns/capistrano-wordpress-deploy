# config valid only for current version of Capistrano
lock '3.4.0'

set :stages, %w(production staging)
set :default_stage, "staging"

set :application, 'my_application'
set :repo_url, 'git@example.com:me/my_repo.git'

# Default branch is the branch you're at
# You may use ask, it will ask you about which branch to use.
#ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory
# set :deploy_to, '/var/www'

# Default value for :scm is :git
set :scm, :git

# Default value for :log_level is :debug
set :log_level, :debug

# Default value for :pty is false
set :pty, true

# App specific shared dirs/files
set :linked_dirs, %w{wp-content/uploads}
#set :linked_files, %w(config/database.yml config/secrets.yml)

set :copy_exclude, [".git", ".DS_Store", ".gitignore", ".gitmodules"]
set :use_sudo, false

after :deploy, "htdocs:create_release_symlink"
after :deploy, "wp:uploads:set_permissions"