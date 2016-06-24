class ProjectStepoutsController < ApplicationController
  before_action :set_project_stepout, only: [:show, :edit, :update, :destroy]

  # GET /project_stepouts
  # GET /project_stepouts.json
  def index
    @project_stepouts = ProjectStepout.all
  end

  # GET /project_stepouts/1
  # GET /project_stepouts/1.json
  def show
  end

  # GET /project_stepouts/new
  def new
    @project_stepout = ProjectStepout.new
  end

  # GET /project_stepouts/1/edit
  def edit
  end

  # POST /project_stepouts
  # POST /project_stepouts.json
  def create
    @project_stepout = ProjectStepout.new(project_stepout_params)

    respond_to do |format|
      if @project_stepout.save
        format.html { redirect_to @project_stepout, notice: 'Project stepout was successfully created.' }
        format.json { render :show, status: :created, location: @project_stepout }
      else
        format.html { render :new }
        format.json { render json: @project_stepout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_stepouts/1
  # PATCH/PUT /project_stepouts/1.json
  def update
    respond_to do |format|
      if @project_stepout.update(project_stepout_params)
        format.html { redirect_to @project_stepout, notice: 'Project stepout was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_stepout }
      else
        format.html { render :edit }
        format.json { render json: @project_stepout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_stepouts/1
  # DELETE /project_stepouts/1.json
  def destroy
    @project_stepout.destroy
    respond_to do |format|
      format.html { redirect_to project_stepouts_url, notice: 'Project stepout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_stepout
      @project_stepout = ProjectStepout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_stepout_params
      params.require(:project_stepout).permit(:n_step, :n_project, :t_document)
    end
end
