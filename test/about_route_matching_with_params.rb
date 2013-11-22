require_relative 'helper'
require_recipe 'about_route_matching_with_params'

scope do
  test 'query param in search route' do
    get '/search', query: 'query'

    assert_equal "You have searched: query", last_response.body
  end
end
