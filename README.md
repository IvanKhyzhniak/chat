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
     -d 'user[email]=john@mcclane.com&user[password]=superhero&user[password_confirmation]=superhero' \
     https://rails-chats-api-ivanhizh.c9users.io/profile
```

### Sign In
```
curl -H 'Accept: application/json' \
     -d 'session[email]=john@mcclane.com&session[password]=superhero' \
     https://rails-chats-api-ivanhizh.c9users.io/session
```

### Get own Profile info
```
curl -H 'Accept: application/json' \
     -H 'Authorization: Token token="45c00d43-85ad-46d5-8225-d0eb339b3261"' \
     https://rails-chats-api-ivanhizh.c9users.io/profile
```
