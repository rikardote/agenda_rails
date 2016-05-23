class Agenda::AppointmentsController < ApplicationController
  def index
    @specialty = Specialty.find(params[:especialidad_id])
    @physician = Physician.find(params[:medico_id])
     
  end

  def show
    
  end


  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def pacientes
    if params[:search]
      @patient = Patient.search(params[:search])
    end
    if @patient.blank?
      flash[:danger] = "Paciente no encontrado..."
    end
    
    
  end

  def destroy
  end

end
