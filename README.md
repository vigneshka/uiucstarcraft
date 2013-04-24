# UIUC Starcraft

This is the source code for the UIUC Starcraft website:

    http://uiucstarcraft.herokuapp.com

It's a Rails app running [Ruby 1.9](http://www.ruby-lang.org/en/downloads) and uses:

* Postgres as a SQL database (SQLite for development)
* Memcahier and Dalli for fragment caching
* The json and open-uri library for json response parsing
* Bourbon/Neat for scss mixins, Compass for spriting
* SimpleForm for forms
* Gmail with action mailer for text and attachment delivery
* jQuery for client-side behavior

Setup
-----

For local development, install the required gems, minus the production gemspecs

    bundle install --without production

Setup the development database (uses sqlite)

    rake db:create && rake db:migrate

Rename example.yml to local_env.yml and define environment variables
    
    mv example.yml local_env.yml

Compile all the assets

    rake assets:precompile

Run the server

    rails server


Deploy
------

The site is deployed to [Heroku](http://heroku.com).
