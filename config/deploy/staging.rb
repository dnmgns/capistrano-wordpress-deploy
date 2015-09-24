set :branch, 'development'
set :deploy_to, '/xxxx'
set :domain, 'development.example.com'
server 'example.com', user: 'xxxxx', roles: %w{app db web}