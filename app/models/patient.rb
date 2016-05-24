class Patient < ActiveRecord::Base
	has_many :type
	has_many :appointments
	has_many :physicians, :through => :appointments

	before_save :capitalize_attributes

	def self.search(search)

	  	# Title is for the above case, the OP incorrectly had 'name'
	  	where("rfc = upper(?)", "#{search}")
	end


	private
	   def capitalize_attributes
	     self.attributes.select{ |a| ["rfc","name","father_lastname", "mother_lastname"].include? a }.each do |attr, val|
	       self.send("#{attr}=", val.try(:strip).try(:upcase))
	     end
	end


end
