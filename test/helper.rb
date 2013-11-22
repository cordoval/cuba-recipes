require 'cuba/test'

def require_recipe name
  dir = ENV['SOLUTION'] ? 'solutions' : 'recipes'
  require_relative "../#{dir}/#{name}/app"
end
