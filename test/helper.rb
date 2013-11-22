require 'cuba/test'

class Cutest::Scope
  def assert_response type
    if Symbol === type
      assert_equal status_code(type), last_response.status
    else
      assert_equal type, last_response.status
    end
  end

  def assert_body body
    assert_equal body, last_response.body
  end

  def status_code code
    Rack::Utils.status_code code
  end
end
