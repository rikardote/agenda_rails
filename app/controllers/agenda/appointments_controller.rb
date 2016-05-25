class Agenda::AppointmentsController < ApplicationController
  def index
    
    @specialty = Specialty.find(params[:especialidad_id])
    @physician = Physician.find(params[:medico_id])
   
    if params[:date]
      @date = params[:date]
    else
      @date = Date.today.strftime("%Y-%m-%d")
    end
    @appointments = Appointment.where('fecha_inicial = ?  AND physician_id = ?', @date, @physician.id )

  end

  def show
    
  end


  def new
     @date = params[:date]
  end

  def create
    @appointment = Appointment.new
    @appointment.fecha_inicial = params[:fecha_inicial]
    @appointment.patient_id = params[:patient_id]
    @appointment.physician_id = params[:physician_id]
    @appointment.horario = params[:horario]

    if @appointment.save
      @specialty = Specialty.find(params[:especialidad_id])
      @physician = Physician.find(params[:medico_id])
      redirect_to agenda_especialidad_medico_appointments_path(:date => @appointment.fecha_inicial)
    else
      render 'new'
    end
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

 
  private
    def appointment_params
      params.require(:appointment).permit(:patient_id, :physician_id, :fecha_inicial, :horario)
    end
   

end
