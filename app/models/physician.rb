class Physician < ActiveRecord::Base
  extend FriendlyId
  friendly_id :full_name, use: :slugged
  belongs_to :specialty
  #has_many :patients, :through => :appointments

  before_save :capitalize_attributes
  
  def full_name
    "#{father_lastname} #{mother_lastname} #{name}"
  end

	private
	   def capitalize_attributes
	     self.attributes.select{ |a| ["name","father_lastname","mother_lastname"].include? a }.each do |attr, val|
	       self.send("#{attr}=", val.try(:strip).try(:upcase))
	     end
	end
end
