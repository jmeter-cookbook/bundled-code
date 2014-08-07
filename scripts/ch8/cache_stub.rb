require 'sinatra'

get '/no_cache' do
  cache_control :no_cache
  # Marks response as non-cacheable. Must submit request to origin server for validation.
  send_file('logo.png')
end

get '/no_store' do
  cache_control :no_store
  # Marks response as non-cacheable under any conditions. Must not keep a copy in cache.
  send_file('logo.png')
end

get '/cache_public' do
  cache_control :public
  # Marks responses as cacheable. 
  send_file('logo.png')
end

get '/cache_private' do
  cache_control :private
  # Marks response as cacheable specific to a user. Not shared e.g. in a proxy
  send_file('logo.png')
end

get '/cache_revalidate' do
  cache_control :must_revalidate, max_age: 3600
  # Marks response as cacheable whilst obeying any freshness information. 
  # Allows caches to serve stale representations under special conditions.
  send_file('logo.png')
end

get '/proxy_revalidate' do
  cache_control :proxy_revalidate
  # Similar to must revalidate except only applies to proxies.
  send_file('logo.png')
end

get '/cache_max_age' do
  cache_control max_age: 3600
  # Specifies the maximum amount of time that a response will be considered fresh. 
  # Similar to expires
  send_file('logo.png')
end

get '/proxy_max_age' do
  cache_control 's-maxage' => 3600
  # Specifies the maximum amount of time that a response will be considered fresh except only applies to proxies.
  send_file('logo.png')
end

get '/expires' do
  expires 3600
  send_file('logo.png')
end

get '/etag' do
  etag '11f998e-844-4e99a322eb5c0'
  send_file('logo.png')
end