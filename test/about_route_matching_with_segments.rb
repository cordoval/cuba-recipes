require_relative 'helper'
require_recipe 'about_route_matching_with_segments'

scope do
  test 'matches username' do
    get '/users/frodsan'

    assert_equal 'username is frodsan', last_response.body
  end

  test 'matches post id' do
    get '/posts/1'

    assert_equal 'post id is 1', last_response.body
  end
end
