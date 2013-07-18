class Product < ActiveRecord::Base
  attr_accessible :descricao, :nome
  validates_presence_of :nome, :descricao
end
