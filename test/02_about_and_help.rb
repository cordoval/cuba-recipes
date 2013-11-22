require_relative 'helper'
require_recipe '02_about_and_help'

scope do
  test 'hello world' do
    get '/'

    assert_equal 200, last_response.status
    assert_equal 'Hello Cuba!', last_response.body
  end

  test 'about' do
    get '/about'

    assert_equal 200, last_response.status
    assert_equal 'About', last_response.body
  end

  test 'help' do
    get '/help'

    assert_equal 200, last_response.status
    assert_equal 'Help', last_response.body
  end
end
