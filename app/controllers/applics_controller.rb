class ApplicsController < ApplicationController
  def index
  end

  def new
    @applic = Applic.new
  end

  def create
    user = current_user
    @applic = user.build_applic(applic_params)
    if @applic.save
      flash[:notice] = t(:applic_saved_successfuly)
      redirect_to applic_path @applic
    else
      render 'new'
    end  
  end

  def edit
    @applic=Applic.find(params[:id])
  end

  def update
    @applic = Applic.find(params[:id])
    if @applic.update_attributes(applic_params)
      flash[:notice] = t(:applic_saved_successfuly)
      redirect_to edit_applic_path @applic
    else
      render 'edit'
    end
  end

  def show
    @applic=Applic.find(params[:id])
  end

  private

  def applic_params
    params.require(:applic).permit(:first_name, :second_name, :last_name, :full_name_passport, 
      :preferred_name, :country_citizen, :address_street, :city, :country, :postal_code, :phone,
      :native_lang, :prof_highest_grade, :prof_university, :prof_grad_year, :prof_actual_position,
      :prof_current_institution, :prof_specialty)
  end 
end
