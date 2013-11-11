require 'open-uri'
require 'json'

class FlashcardsController < ApplicationController
  def index
    url = "http://kiei925.herokuapp.com/students.json?access_token=broncos"
    raw_data = open(url).read
	parsed_data = JSON.parse(raw_data)
    first = parsed_data[20]
    @first_name = first["first_name"]
    @last_name = first["last_name"]
    @image_url = first["image_url"]
    #results = parsed_data["results"]
    
    #geometry = first["geometry"]
    #location = geometry["location"]
    #@latitude = location["lat"]
    #@longitude = location["lng"]
    #@latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]]



    parsed_data.each do |students|
    @first_name = first["first_name"]
    @last_name = first["last_name"]
    @image_url = first["image_url"]
    end
  end
end
