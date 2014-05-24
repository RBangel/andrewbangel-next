class WorksController < ApplicationController
  def new
    @work = Work.new
  end

  def show
    @work = Work.find params[:id]
  end

  def index
    @works = Work.all
  end

  def create
    @work = Work.new user_parms

    if @work.save
      redirect_to works_path
    else
      render 'new'
    end
  end

  def edit
    @work = Work.find params[:id]
  end

  def destroy
    Work.find params[:id].destroy
    redirect_to works_path
  end

  def update
    @work = Work.find params[:id]

    if @work.update_attributes user_parms
      redirect_to works_path
    else
      render 'edit'
    end
  end

  private 

  def user_parms
    params.require(:work).permit(:work_type_id, :title, :url, :thumbnail, :date_created)
  end

end
