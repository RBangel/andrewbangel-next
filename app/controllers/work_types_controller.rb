class WorkTypesController < ApplicationController
  def new
    @worktype = WorkType.new
  end

  def show
  end

  def index
    @worktypes = WorkType.all
  end

  def create
    @worktype = WorkType.new user_parms

    if @worktype.save
      redirect_to work_types_path
    else
      render 'new'
    end
  end

  def edit
  end

  def destroy
    WorkType.find(params[:id]).destroy
    redirect_to work_types_path
  end

  def update
  end

  private

  def user_parms
    params.require(:work_type).permit(:name, :description)
  end

end
