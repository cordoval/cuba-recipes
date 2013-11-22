require_relative 'helper'
require_recipe '01_hello_world'

scope do
  test 'hello world' do
    get '/'

    assert_equal status_code(:ok), last_response.status
    assert_equal 'Hello Cuba!', last_response.body
  end
end
