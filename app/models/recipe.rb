class Recipe < ActiveRecord::Base
	belongs_to :user
	has_many :activities, as: :master
end
