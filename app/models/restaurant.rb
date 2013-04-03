class Restaurant < ActiveRecord::Base
  attr_accessible :name, :num_tables, :categories_id

  has_and_belongs_to_many :categories
  has_many :timeslots

    def times_available
  	# times = {}
  	# for i in 8...20
	  # 	if self.timeslots.find_by_time(i).nil? || self.timeslots.find_by_time(i).reservations.count < self.num_of_tables
	  # 			times[i] = "Available"
   #      else
   #        times[i] = "Unavailable"
	  # 	end
  	# end
  	# return(times)
  end
end
