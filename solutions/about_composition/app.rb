require 'cuba'

Cuba.define do
  on 'admin' do
    run Admins
  end

  on default do
    run Guests
  end
end

class Admins < Cuba
  define do
    on 'login' do
      on get do
        res.write 'admin login form'
      end

      on post, param('username'), param('password') do |username, password|
        res.write "#{username}:#{password}"
      end
    end
  end
end

class Guests < Cuba
  define do
    on 'contact' do
      res.write 'contact'
    end
  end
end
