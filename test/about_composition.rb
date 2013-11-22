require_relative 'helper'
require_recipe 'about_composition'

scope do
  test 'admin login form' do
    get '/admin/login'

    assert_equal 'admin login form', last_response.body
  end

  test 'admin authentication' do
    post '/admin/login', username: 'sonny', password: 'moore'

    assert_equal 'sonny:moore', last_response.body
  end

  test 'contact route for guests app' do
    get '/contact'

    assert_equal 'contact', last_response.body
  end
end
