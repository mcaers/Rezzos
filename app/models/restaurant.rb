class Restaurant < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :categories
  has_many :timeslots
end
