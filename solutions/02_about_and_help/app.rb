require 'cuba'

Cuba.define do
  on root do
    res.write 'Hello Cuba!'
  end

  on 'about' do
    res.write 'About'
  end

  on 'help' do
    res.write 'Help'
  end
end
