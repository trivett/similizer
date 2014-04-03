
    giphy_base = "http://api.giphy.com/v1/gifs/search?q="
    query = self.name
    giphy_end = "&api_key=#{GIPHY_KEY}"

    @base = HTTParty.get(giphy_base + query )
    j = JSON.parse(@base.body)
    return ["data"][0]["images"]["original"]["url"]
