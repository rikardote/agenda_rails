class AgendaController < ApplicationController
  def index
  	
  	@specialties = Specialty.all.order('name ASC')
  end

  

  def view
  	
  end
end
