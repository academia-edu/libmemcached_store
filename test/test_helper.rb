ENV["RAILS_ENV"] = "test"
$:.unshift File.expand_path('../../lib', __FILE__)

require 'minitest/autorun'
require 'mocha/setup'
require 'memcached'
require 'active_support'
require 'active_support/core_ext/module/aliasing'
require 'active_support/core_ext/object/duplicable'

begin
  Memcached.new.get("xxx")
rescue Memcached::Error
  raise("\n\nTurn on memcached!!!\n\n")
end
