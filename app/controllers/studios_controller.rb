class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show create new destroy]
  before_action :set_studio, only: %i[destroy show]
  def index
    @studios = policy_scope(Studio)
  end

  def show
    authorize @studio
  end

  def new
    @studio = Studio.new
    authorize @studio
  end

  def create
    @studio = Studio.new(studio_params)
    @studio.user = current_user
    @studio.save
    redirect_to studio_path(@studio)
    authorize @studio
  end

  def destroy
    if current_user.id == @studio.user_id
      @studio.destroy
      redirect_to studios_path status: :see_other
      authorize @studio
    else
      return "Not authorized to do that"
    end
  end

  private

  def set_studio
    @studio = Studio.find(params[:id])
  end

  def studio_params
    params.require(:studio).permit(:name, :address, :photo, :price, :description)
  end
end
