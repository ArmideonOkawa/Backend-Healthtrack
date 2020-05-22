require 'http'

# MY_API = ENV["API_KEY"]
API_HOST = "https://api.nal.usda.gov/"
LIST_PATH = "fdc/v1/foods/list?"

  def list
    url = "#{API_HOST}#{LIST_PATH}api_key=#{ENV['API_KEY']}"
    params = {
      # dataType: "Branded",
      pageSize: 200,
      sortOrder: "asc"
    }
  
    response = HTTP.get(url, params: params)
     #byebug
    response.parse
  end
  #byebug
  list.each do |food|
    Food.get_foods_list(food)
end