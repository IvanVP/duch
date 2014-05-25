# Fotorama-Portfolio plugin for [Refinery CMS](http://www.refinerycms.com) ([Github](http://github.com/))

Uses [Fotorama plugin](http://fotorama.io/)

## Requirements

This engine requires Refinery CMS version >= 2.0.0.

## Gem Installation

Ensure you have created your application's database before adding this engine (with ``rake db:setup``).

Open your ``Gemfile`` and add this line to the bottom:

    gem 'refinerycms-portfolio', :git => 'git://github.com/
    
Now run ``bundle install`` and once bundler has installed the gem run:

rails generate refinery:portfolio
rake db:migrate
rake db:seed

Now, restart your web server and enjoy.
