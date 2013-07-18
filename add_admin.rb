require "rubygems"
require "active_record"

ActiveRecord::Base.establish_connection ({
  :adapter => "mysql2",
  :host => "localhost",
  :username => "root",
  :password => "123456",
  :database => "kwik_development"})

class User < ActiveRecord::Base
end

# SETAR EMAIL PARA ADICIONAR A ROLE DE ADMIN
email = ARGV[0]

user = User.find_by_email(email)
  if user.nil? 
    puts 'cadastro nao encontrado'
  else
    if user.update_attribute(:admin, 'true')
     puts 'permissao adicionada'
    end
  end
