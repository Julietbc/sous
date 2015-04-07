class Activity < ActiveRecord::Base
	belongs_to :master, polymorphic: true
end
