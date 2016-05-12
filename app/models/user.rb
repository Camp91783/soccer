class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password
end
