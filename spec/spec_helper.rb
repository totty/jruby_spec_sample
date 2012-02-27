# -*- coding: utf-8 -*-
require 'java'

$CLASSPATH << File.expand_path('../../classes/', __FILE__)

Dir["#{File.dirname(__FILE__)}/../../lib/*.jar"].each do |jar|
   require jar
end

RSpec.configure do |config|
  # == Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  config.mock_with :rspec
end
