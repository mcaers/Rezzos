class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  has_many :reservations
end
