class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :product
  validates_presence_of :name
end
