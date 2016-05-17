class Team < ActiveRecord::Base
	validates :name, presence: true

	has_many :players
	belongs_to :league
	
end
