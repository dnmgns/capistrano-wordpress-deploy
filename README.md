#Capistrano for Wordpress

The following command will install the latest released capistrano v3 revision:
```sudo gem install capistrano```

I also recommend that you install highline to hide password echo from cli
```sudo gem install highline```

Then, to use capistrano...

> Deploy from git repo
```cap <production|stage> deploy```

> Push any changed or new files from local uploads to remote uploads
```cap <production|stage> wp:uploads:push```

> Pull any changed or new files from remote uploads to local uploads
```cap <production|stage> wp:uploads:pull```

> Set permissions on upload folder [owner: read+write+execute, group: read+write+execute, other: read]
```cap <production|stage> wp:uploads:set_permissions```