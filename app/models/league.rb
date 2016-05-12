class League < ActiveRecord::Base
	validates :name, presence: true

  has_many :teams

end
