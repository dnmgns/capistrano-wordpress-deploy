set :branch, 'master'
set :deploy_to, '/xxxx'
set :domain, 'production.example.com'
server 'example.com', user: 'xxxxx', roles: %w{app db web}