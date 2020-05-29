
# twitter-crystal

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/8f698870aeeb4e5a9cb53549725ae653)](https://app.codacy.com/app/mamantoha/twitter-crystal?utm_source=github.com&utm_medium=referral&utm_content=mamantoha/twitter-crystal&utm_campaign=Badge_Grade_Dashboard)
[![Build Status](https://travis-ci.org/mamantoha/twitter-crystal.svg?branch=master)](https://travis-ci.org/mamantoha/twitter-crystal)
[![GitHub release](https://img.shields.io/github/release/mamantoha/twitter-crystal.svg)](https://github.com/mamantoha/twitter-crystal/releases)
[![Docs](https://img.shields.io/badge/docs-available-brightgreen.svg)](https://mamantoha.github.io/twitter-crystal/)
[![License](https://img.shields.io/github/license/mamantoha/twitter-crystal.svg)](https://github.com/mamantoha/twitter-crystal/blob/master/LICENSE.md)

A library to access the Twitter API using Crystal

> This is a fork of [twitter-crystal](https://github.com/sferik/twitter-crystal) which was originally written by Erik Michaels-Ober.
>
> The original repository is no longer maintained and does not work with the latest Crystal version.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  twitter-crystal:
    github: mamantoha/twitter-crystal
```

In your terminal run:

```console
shards
```

This will get the latest code from this github repository and copy it to a `lib` directory. All that's left is to require it:

```crystal
require "twitter-crystal"
```

## Usage

After the installation, you can use twitter-crystal by creating a client object:

```crystal
require "twitter-crystal"

consumer_key        = "your consumer key"
consumer_secret     = "your consumer secret"
access_token        = "your access token"
access_token_secret = "your access token secret "

client = Twitter::REST::Client.new(consumer_key, consumer_secret, access_token, access_token_secret)
```

All the necessary keys can be generated by [creating a Twitter application](https://dev.twitter.com/oauth/overview/application-owner-access-tokens).

After configuring a `client`, you can do the following things.

### Post/Delete a tweet

```crystal
# post a tweet
client.update("Good morning")

# delete a tweet
client.destroy_status(897099923128172545)
```

### Fetch a particular Tweet by ID

```crystal
client.status(950491199454044162)
```

### Follow a user(by screen name or user_id)

```crystal
client.follow("kenta_s_dev")
client.follow(776284343173906432)
```

### Unfollow a user(by screen name or user_id)

```crystal
client.unfollow("kenta_s_dev")
client.unfollow(776284343173906432)
```

### Fetch a list of followers with profile details (by screen name or user ID, or by implicit authenticated user)

```crystal
client.followers("crystallanguage")
client.followers(15)
client.followers
```

### Fetch a list of friends with profile details (by screen name or user ID, or by implicit authenticated user)

```crystal
client.friends("crystallanguage")
client.friends(15)
client.friends
```

### Search users

```crystal
client.user_search("Crystal lang") # returns maximum of 20 users
```

### Fetch users by user_id/screen_name

```crystal
client.users("kenta_s_dev")

# fetch multiple users(maximum is 100)
client.users("sferik", "yukihiro_matz", "dhh")
```

### Fetch followers' IDs

```crystal
client.follower_ids
```

### Fetch followees' IDs

```crystal
# In Twitter API documents, followees are called 'friends'.
client.friend_ids
```

### You can also call Twitter's API directly using the `get` or `post` method

```crystal
client.get("/1.1/users/show.json", { "screen_name" => "sferik" })
client.post("/1.1/statuses/update.json", { "status" => "The world is your oyster." })
```

## Streaming

### Configuration works just like `Twitter::REST::Client`

```crystal
consumer_key        = "your consumer key"
consumer_secret     = "your consumer secret"
access_token        = "your access token"
access_token_secret = "your access token secret "

client = Twitter::Streaming::Client.new(consumer_key, consumer_secret, access_token, access_token_secret)
```

### Stream a random sample of all tweets

```crystal
client.sample do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
```

### Stream mentions of coffee or tea

```crystal
topics = ["coffee", "tea"]
client.filter({"track" => topics.join(",")}) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
```

If you want to call the API directly, refer to the [API reference](https://dev.twitter.com/rest/reference).

## Contributing

1. Fork it (<https://github.com/mamantoha/twitter-crystal/fork>)
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

### Pull Requests are very welcome

The goal of the project is to implement all methods to call [Twitter REST API](https://dev.twitter.com/rest/public). There are a lot of things need to be done. Pull Requests are welcome :)

## Contributors

- [sferik](https://github.com/sferik) Erik Michaels-Ober - creator
- [kenta-s](https://github.com/kenta-s) Kenta Shirai - maintainer
- [mamantoha](https://github.com/mamantoha) Anton Maminov - maintainer
- [vladfaust](https://github.com/vladfaust) Vlad Faust - Streaming API support
