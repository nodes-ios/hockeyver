#!/usr/bin/env ruby

require 'httparty'
require 'json'

module HockeyVer

  def self.parse_hockey_version(app_id, api_token)
    # Safety checking
    raise "ERROR: No app id provided!" if app_id.nil?
    raise "ERROR: No api token provided!" if api_token.nil?

    # Fetch the information
    response = HTTParty.get("https://rink.hockeyapp.net/api/2/apps/#{app_id}/app_versions",
                            :headers => { 'X-HockeyAppToken' => api_token})

    json = JSON.parse(response.body)

    # Parse the JSON
    begin
      # If found, return version
      latest = json["app_versions"].first
      return(latest["version"])
    rescue Exception
      # Error out and return nil otherwise
      puts("Error while parsing hockey ver JSON. ", json)
      return(nil)
    end
  end
end
