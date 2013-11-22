require_relative 'helper'
require_recipe 'about_routing_basics'

scope do
  test 'hello cuba' do
    get '/'

    assert_equal 'Hello Cuba!', last_response.body
  end

  test 'about' do
    get '/about'

    assert_equal 'About', last_response.body
  end

  test 'help' do
    get '/help'

    assert_equal 'Help', last_response.body
  end
end
