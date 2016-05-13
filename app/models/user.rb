class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :password, presence: true
  validates_confirmation_of :password, presence: true
end
