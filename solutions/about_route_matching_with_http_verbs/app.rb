require 'cuba'

Cuba.define do
  on 'login' do
    on get do
      res.write 'Login form here'
    end

    on post do
      on param('username'), param('password') do |username, password|
        res.write "Hi #{username}, your password is #{password}"
      end

      on default do
        res.write 'You need an username and a password'
      end
    end
  end
end
