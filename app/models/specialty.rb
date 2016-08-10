class Specialty < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
	before_save { self.name = name.upcase }

end
