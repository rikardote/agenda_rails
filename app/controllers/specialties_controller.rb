class SpecialtiesController < ApplicationController
  before_action :find_specialty, only: [:show, :edit, :update, :destroy]
  def index
    @specialties = Specialty.all
  end

  def new
    @specialty = Specialty.new
    
  end

  def create
    @specialty = Specialty.new(specialty_params)
    if @specialty.save
      redirect_to specialties_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @specialty.update(specialty_params)
      redirect_to specialties_path(@specialty)
    else
      render 'edit'
    end
  end

  def destroy
    @specialty.destroy
    redirect_to specialties_path
  end

  def show

  end

  private
    def specialty_params
      params.require(:specialty).permit(:name)
    end
    def find_specialty
      @specialty = Specialty.friendly.find(params[:id])   
    end

end