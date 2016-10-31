require 'httparty'

class RecipeSearch
  BASE_URL = "https://api.edamam.com/"
  API_ID = ENV["EDAMAM_ID"]
  API_KEY = ENV["EDAMAM_KEY"]

  def self.find(query)
    url = BASE_URL + "search?q=#{query}&app_id=#{API_ID}&app_key=#{API_KEY}"
    data = HTTParty.get(url)
  end
end
