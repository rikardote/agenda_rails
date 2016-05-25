class Patient < ActiveRecord::Base
	has_many :type
	has_many :appointments

	belongs_to :type

	before_save :capitalize_attributes

	def self.search(search)

	  	# Title is for the above case, the OP incorrectly had 'name'
	  	where("rfc = upper(?)", "#{search}")
	end
	def fullname
	  "#{name} #{father_lastname} #{mother_lastname}"
	end


	private
	   def capitalize_attributes
	     self.attributes.select{ |a| ["rfc","name","father_lastname", "mother_lastname"].include? a }.each do |attr, val|
	       self.send("#{attr}=", val.try(:strip).try(:upcase))
	     end
	end


end
