class Report < ActiveRecord::Base
	validates :team_name, presence: true
	validates :location, presence: true
end
