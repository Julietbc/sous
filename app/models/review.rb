class Review < ActiveRecord::Base
	belongs_to :user
	has_many :activities, as: :master

	                    after_create do |review|
                    	Activity.create(master_id: review.id, master_type: review.class.name)
                 
                    end
end
