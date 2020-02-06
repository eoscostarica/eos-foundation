class AccountsController < ApplicationController
  #before_action :set_project, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /projects
  # GET /projects.json
  def index
  	q_param = params[:q]
    page = params[:page]
    per_page = params[:per_page] || 100

    @q = Account.ransack q_param
    @accounts = @q.result.page(page).per(per_page)

  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:account).permit(:is_eligable, :is_registered)
    end
end
