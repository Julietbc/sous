class Recipe < ActiveRecord::Base
	belongs_to :user
	has_many :activities, as: :master

        after_create do |recipe|
    	Activity.create(master_id: recipe.id, master_type: recipe.class.name)
  
    end
end
