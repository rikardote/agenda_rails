class PhysiciansController < ApplicationController
	  before_action :find_physician, only: [:show, :edit, :update, :destroy]
  def index
    @physicians = Physician.all
  end

  def new
    @physician = Physician.new
    
  end

  def create
    @physician = Physician.new(physician_params)
    if @physician.save
      redirect_to physicians_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @physician.update(physician_params)
      redirect_to physicians_path(@physician)
    else
      render 'edit'
    end
  end

  def destroy
    @physician.destroy
    redirect_to physicians_path
  end

  def show

  end

  private
    def physician_params
      params.require(:physician).permit(:num_empleado, :name, :father_lastname, :mother_lastname,:specialty_id)
    end
    def find_physician
      @physician = Physician.find(params[:id])      
    end
end
