class AgendaController < ApplicationController
  def index
  	
  	@specialties = Specialty.all
  end

  

  def view
  	
  end
end
