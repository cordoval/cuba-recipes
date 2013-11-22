require 'cuba'

Cuba.define do
  on 'users/:username' do |username|
    res.write "username is #{username}"
  end

  on 'posts/:id' do |id|
    res.write "post id is #{id}"
  end
end
