class Product < ActiveRecord::Base
  attr_accessible :descricao, :nome
  belongs_to :category
  validates_presence_of :nome, :descricao
end
