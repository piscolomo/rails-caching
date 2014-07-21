rails-caching
==========

Demo to getting started with caching in Rails

Russian Doll caching is a type of nested fragment caching that auto expires fragments when object timestamps change

Example of Rusian Doll Caching, check app/views/welcome/index.html.erb

Russian-doll caching schemes are hard to maintain when nested templates are updated(manual versions). Cache digests are Rails 4's solution for tracking the changes of aggressively cached templates.

So:
	gem 'cache_digests'

Put in your dependent model touch: true to helps for update the data of belongs model
	class Post < ActiveRecord::Base
  	belongs_to :user, touch: true
	end

For use a dedicated storage for cache(the default is the filesystem) install cache storage Dalli in production (Addon Memcachier from Heroku)
	gem 'memcachier', group: :production
	gem 'dalli', group: :production

And in config/environments/production.rb
	config.cache_store = :dalli_store