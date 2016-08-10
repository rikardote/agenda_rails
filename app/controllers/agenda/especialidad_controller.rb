class Agenda::EspecialidadController < ApplicationController
	def index
	  	@specialty = Specialty.find_by_slug(params[:specialty_slug])
	  	@physicians = Physician.where("specialty_id" => @specialty.id)
  end
end
