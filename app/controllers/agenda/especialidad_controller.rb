class Agenda::EspecialidadController < ApplicationController
	def show
	  	@specialty_id = Specialty.find(params[:id])
	  	@physicians = Physician.where("specialty_id" => @specialty_id)
  end
end
