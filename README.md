# Rails Chats API - Sample Application

## Install

### Clone repository
```
git clone https://github.com/MLSDev/rails-chats-api
```

### Install gems
```
cd rails-chats-api
```

```
bundle install
```

### Run migrations
```
rake db:migrate
```

### Run specs
```
rake
```

### Run server
```
rails s
```

## API documentation

### Sign Up
```
curl -H 'Accept: application/json' \
     -d 'user[email]=Vito@Corleone.com&user[password]=superhero&user[password_confirmation]=superhero' \
     https://chat-ivanhizh.c9users.io/profile
```

### Sign In
```
curl -H 'Accept: application/json' \
     -d 'session[email]=john@mcclane.com&session[password]=superhero' \
     https://chat-ivanhizh.c9users.io/session
```

### Get own Profile info
```
curl -H 'Accept: application/json' \
     -H 'Authorization: Token token="41b658bf-a327-415a-b0b5-8c779bee6f5c"' \
     https://chat-ivanhizh.c9users.io/profile
```
```

curl -H 'Authorization: Token token="41b658bf-a327-415a-b0b5-8c779bee6f5c"' -d 'chat[user_ids][]=2&chat[user_ids][]=3' https://chat-ivanhizh.c9users.io/chats


```