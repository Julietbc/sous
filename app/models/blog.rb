class Blog < ActiveRecord::Base
	belongs_to :user
	has_many :activities, as: :master
	validates :title, presence: true,
                    length: { minimum: 5 }

                    after_create do |blog|
                    	Activity.create(master_id: blog.id, master_type: blog.class.name)
                 
                    end

                    after_update do |blog|
                    	Activity.create(master_id: blog.id, master_type: blog.class.name)
                    	end

end
