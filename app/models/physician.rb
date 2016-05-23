class Physician < ActiveRecord::Base
  belongs_to :specialty

  before_save :capitalize_attributes

	private
	   def capitalize_attributes
	     self.attributes.select{ |a| ["name","father_lastname","mother_lastname"].include? a }.each do |attr, val|
	       self.send("#{attr}=", val.try(:strip).try(:upcase))
	     end
	end
end
