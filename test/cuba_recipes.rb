def require_recipe_test name, title
  puts "\n*** #{title} (test/#{name}.rb) ***"
  require_relative name
  puts
  Cuba.reset!
end

# Routing

require_recipe_test 'about_routing_basics', 'Routing Basics'
require_recipe_test 'about_route_matching_with_params', 'Route Matching with Parameters'
require_recipe_test 'about_route_matching_with_segments', 'Route Matching with Segments'
require_recipe_test 'about_route_matching_with_http_verbs', 'Route Matching with HTTP Verbs'
require_recipe_test 'about_composition', 'Composition: Mounting an app inside another Cuba app'

puts
