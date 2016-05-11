class Player < ActiveRecord::Base
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :name, presence: true

  belongs_to :team
end
