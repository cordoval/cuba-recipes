require 'cuba'

Cuba.define do
  on 'search', param('query') do |query|
    res.write "You have searched: #{query}"
  end
end
