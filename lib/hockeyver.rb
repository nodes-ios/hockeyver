#!/usr/bin/env ruby

require 'httparty'
require 'json'
require 'slop'

opts = Slop.parse do |o|
  o.string '-i', '--app_id', 'Hockey app id'
  o.string '-t', '--token', 'Hockey api token'
end

def fail(opts)
  puts opts
  exit
end

app_id = opts[:app_id]
if app_id.nil?
  puts('ERROR: No app id provided!')
  fail(opts)
end

hockey_token = opts[:token]
if hockey_token.nil?
  puts('ERROR: No api token provided!')
  fail(opts)
end

response = HTTParty.get("https://rink.hockeyapp.net/api/2/apps/#{app_id}/app_versions",
                        :headers => { 'X-HockeyAppToken' => hockey_token})

json = JSON.parse(response.body)

begin
latest = json["app_versions"].first
puts(latest["version"])
rescue Exception
  puts(json)
  exit 1
end
