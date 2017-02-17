# bitcoin-client

Provides a Ruby library to the complete Bitcoin JSON-RPC API.

### Installation

    gem install bitcoin-client

### Usage

    require 'bitcoin-client'

    client = Bitcoin::Client.new('username', 'password', host: '127.0.0.1', port: 9998)
    client.balance
    # => 0.001
  
### Host, Port and SSL

Here are several examples of how you can change the host information:

  Bitcoin::Client('username', 'password', :host => 'example.com', :port => 38332, :ssl => true)
  
  client = Bitcoin::Client.new('username', 'password', :host => 'example.com')
  client.port = 38332
  client.ssl = true
  client.ssl?
  # => true
  
You should see the Bitcoin::Client class documentation if you'd like to see the other options and methods
that are made available.
