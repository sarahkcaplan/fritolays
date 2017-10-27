get '/locations' do
  if request.xhr?
    @lat = params[:lat]
    @lng = params[:lng]
    response = HTTParty.get("http://api.foursquare.com/v2/venues/explore?client_id=CQAMFL3THHILD5WSH5PJ50BWRWTF4BLXZ5TXIUPWYCF3KI3O&client_secret=WNLFJMLY2BK310HLFJXBXRLT2KEYCFTAEF3IXJOHZAPX1YTV&v=20170801&ll=#{@lat},#{@lng}&intent=browse&radius=25000&categoryId=4bf58dd8d48988d118951735,52f2ab2ebcbc57f1066b8b46&limit=5")
    @store = JSON.parse(response.read_body)
    @store_array = @store["response"]["groups"][0]["items"]
    @store_location = @store["response"]["groups"][0]["items"]
    @store_array.map! do |store|
      @store_name_array = store["venue"]["name"]
    end
    erb :'locations/_stores', layout: false, locals: { store_array: @store_array}
  end
end
