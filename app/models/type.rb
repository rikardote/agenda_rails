class Type < ActiveRecord::Base
	belongs_to :patient
	before_save { self.description = description.upcase }
	
	def types_with_desc
		code_num = fill_zeros("#{code}")
    	"#{code_num} - #{description}"
    end
    
  	def fill_zeros(code_num)
   	 "#{code}".to_s.rjust(2, '0')
  	end


	
end
