require_relative 'helper'
require_recipe '01_hello_world'

scope do
  test 'hello world' do
    get '/'

    assert_equal 200, last_response.status
    assert_equal 'Hello Cuba!', last_response.body
  end
end
