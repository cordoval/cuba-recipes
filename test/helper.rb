require 'cuba/test'

def require_recipe name
  dir = ENV['SOLUTION'] ? 'solutions' : 'recipes'
  require_relative "../#{dir}/#{name}/app"
end

class Cutest::Scope
  def status_code code
    Rack::Utils.status_code code
  end
end
