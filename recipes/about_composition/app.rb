require 'cuba'

Cuba.define do
  on 'admin' do
    run Admins
  end

  on default do

  end
end

class Admins < Cuba
  define do
  end
end

class Guests < Cuba
  define do
    on 'contact' do
      res.write 'contact'
    end
  end
end
