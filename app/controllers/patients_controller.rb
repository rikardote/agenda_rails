class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :destroy]
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
    
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patients_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @patient.update(patient_params)
      redirect_to patients_path(@patient)
    else
      render 'edit'
    end
  end

  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  def show

  end

  private
    def patient_params
      params.require(:patient).permit(:rfc, :name, :father_lastname, :mother_lastname, :type_id, :fecha_nacimiento)
    end
    def find_patient
      @patient = Patient.find(params[:id])      
    end

end
