include HTTParty

response = HTTParty.get('api.foursquare.com/v2/venues/explore?client_id=CQAMFL3THHILD5WSH5PJ50BWRWTF4BLXZ5TXIUPWYCF3KI3O&client_secret=WNLFJMLY2BK310HLFJXBXRLT2KEYCFTAEF3IXJOHZAPX1YTV&v=20170801&ll=18.7061,98.9817&intent=browse&radius=25000&categoryId=4bf58dd8d48988d118951735,52f2ab2ebcbc57f1066b8b46&limit=1')

puts response.meta
# response.code, response.message, response.headers.inspect

prams from AJAX request with lat: and lng:
    string interp ll
    response = HTTParty.get('api.foursquare.com/v2/venues/explore?client_id=CQAMFL3THHILD5WSH5PJ50BWRWTF4BLXZ5TXIUPWYCF3KI3O&client_secret=WNLFJMLY2BK310HLFJXBXRLT2KEYCFTAEF3IXJOHZAPX1YTV&v=20170801&ll=18.7061,98.9817&intent=browse&radius=25000&categoryId=4bf58dd8d48988d118951735,52f2ab2ebcbc57f1066b8b46&limit=1')
    extract releavant json data
    last line here send json object to AJAX response
  end
end

ll and radius
class FoursquareAdapter

  base_uri 'api.foursquare.com/v2/venues/explore'

  def initialize
    params = {
    client_id => 'CQAMFL3THHILD5WSH5PJ50BWRWTF4BLXZ5TXIUPWYCF3KI3O',
    client_secret => 'WNLFJMLY2BK310HLFJXBXRLT2KEYCFTAEF3IXJOHZAPX1YTV',
    v =>'20170801',
    query =>'coffee',
    limit => 1}
  end

  def venues
    @request = self.class.get(base_uri, params)
  end
end

# new_try = new.FoursquareAdapter
# puts new_try.venues
