class Reservation < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :user_id

  belongs_to :users 
  belongs_to :timeslots
end
