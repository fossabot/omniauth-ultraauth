# OmniAuth::UltraAuth
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fultraauth%2Fomniauth-ultraauth.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fultraauth%2Fomniauth-ultraauth?ref=badge_shield)


## Installation

Add the following to Gemfile:

    gem 'omniauth-ultraauth'

Install it using Bundler:

    $ bundle
    
## Before You Begin

You will require to create an application on https://ultraauth.com

1. Create an account and login to https://ultraauth.com
2. Go to "Create an App" and select "Ruby on Rails"
3. Click on "Edit Callback URL". The URL should be your host followed by `/auth/ultraauth/callback`. For example, http://localhost:3000/auth/ultraauth/callback

## Usage

Example configuration:

If you are using Rails, your `config/intializers/omniauth.rb` file should look like this:
```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :ultraauth, "CLIENT_ID", "CLIENT_SECRET", client_options: {
    redirect_uri: "CALLBACK_URI" # i.e. http://localhost:3000/auth/ultraauth/callback
  }
end
```

Replace "CLIENT_ID", "CLIENT_SECRET", "CALLBACK_URI" with the values from the application you created on https://ultraauth.com

## Authentication Hash

An example of auth hash returned from the server available under `request.env['omniauth.auth']`:

```
 {
  "provider": "ultraauth",
  "uid": "abcd1234...",
  "info": {
    "name": null,
    "email": null,
    "nickname": null,
    "first_name": null,
    "last_name": null,
    "gender": null,
    "image": null,
    "phone": null,
    "urls": {
      "website": null
    }
  },
  "credentials": {
    "id_token": "abcd1234...",
    "token": "abcd1234...",
    "refresh_token": null,
    "expires_in": 3600,
    "scope": "openid"
  },
  "extra": {
    "raw_info": {
      "sub": "abcd1234...."
    }
  }
}
```

## Contributing

1. Fork it ( http://github.com/ultraauth/omniauth-ultraauth/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fultraauth%2Fomniauth-ultraauth.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fultraauth%2Fomniauth-ultraauth?ref=badge_large)