class Assignment < ActiveRecord::Base
	belongs_to :lesson
	belongs_to :user
	#belongs_to :student, :class_name => "User"
end
