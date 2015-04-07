class Blog < ActiveRecord::Base
	belongs_to :user
	has_many :activities, as: :master
	validates :title, presence: true,
                    length: { minimum: 5 }
end
