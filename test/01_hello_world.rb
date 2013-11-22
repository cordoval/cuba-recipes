require_relative 'helper'
require_relative '../recipes/01_hello_world/app.rb'

scope do
  test 'hello world' do
    get '/'

    assert_response :ok
    assert_body 'Hello Cuba!'
  end
end
