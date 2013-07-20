class Product < ActiveRecord::Base
  attr_accessible :descricao, :nome, :category_id
  belongs_to :category
  validates_presence_of :nome, :descricao
end
