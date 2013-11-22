require_relative 'helper'
require_recipe 'about_route_matching_with_http_verbs'

scope do
  test 'get login' do
    get '/login'

    assert_equal 'Login form here', last_response.body
  end

  test 'post login without params' do
    post '/login'

    assert_equal 'You need an username and a password', last_response.body
  end

  test 'post login with params' do
    post '/login', username: 'sonny', password: 'moore'

    assert_equal 'Hi sonny, your password is moore', last_response.body
  end
end
