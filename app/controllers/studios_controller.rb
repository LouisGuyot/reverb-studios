class StudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @studios = policy_scope(Studio)
  end

  def show
    @studio = Studio.find(params[:id])
    authorize @studio
  end
end
