class Specialty < ActiveRecord::Base
	before_save { self.name = name.upcase }
end
