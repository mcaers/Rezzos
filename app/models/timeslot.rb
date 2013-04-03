class Timeslot < ActiveRecord::Base
  attr_accessible :time, :month, :day

  attr_writer :time, :month: :day 

  has_many :reservations
  belongs_to :restaurants

  # before_save :on => :create do 
  # 	now = Date.new
  # 	starts_at = Time.new(now.year @month, @day, @time)
  # end


end
