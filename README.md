# Capistrano for Wordpress

## Installation

Git clone the repo and place it in the root of your your wordpress web project.

The following command will install the latest released capistrano v3 revision:
```
sudo gem install capistrano
```

I also recommend that you install highline to hide password echo from cli
```
sudo gem install highline
```

## Configuration

Configure the staging and production environment by updating config/deploy/production.rb and config/deploy/staging.rb to match your environment.

## Usage
Then, to use capistrano, from your terminal in the wordpress root..

Deploy from git repo
```
cap <production|stage> deploy
```

Push any changed or new files from local uploads to remote uploads
```
cap <production|stage> wp:uploads:push
```

Pull any changed or new files from remote uploads to local uploads
```
cap <production|stage> wp:uploads:pull
```

Set permissions on upload folder [owner: read+write+execute, group: read+execute, other: read+execute,]
```
cap <production|stage> wp:uploads:set_permissions
```
