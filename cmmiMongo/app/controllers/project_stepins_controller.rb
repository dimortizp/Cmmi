class ProjectStepinsController < ApplicationController
  before_action :set_project_stepin, only: [:show, :edit, :update, :destroy]

  # GET /project_stepins
  # GET /project_stepins.json
  def index
    @project_stepins = ProjectStepin.all
  end

  # GET /project_stepins/1
  # GET /project_stepins/1.json
  def show
  end

  # GET /project_stepins/new
  def new
    @project_stepin = ProjectStepin.new
  end

  # GET /project_stepins/1/edit
  def edit
  end

  # POST /project_stepins
  # POST /project_stepins.json
  def create
    @project_stepin = ProjectStepin.new(project_stepin_params)

    respond_to do |format|
      if @project_stepin.save
        format.html { redirect_to @project_stepin, notice: 'Project stepin was successfully created.' }
        format.json { render :show, status: :created, location: @project_stepin }
      else
        format.html { render :new }
        format.json { render json: @project_stepin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_stepins/1
  # PATCH/PUT /project_stepins/1.json
  def update
    respond_to do |format|
      if @project_stepin.update(project_stepin_params)
        format.html { redirect_to @project_stepin, notice: 'Project stepin was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_stepin }
      else
        format.html { render :edit }
        format.json { render json: @project_stepin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_stepins/1
  # DELETE /project_stepins/1.json
  def destroy
    @project_stepin.destroy
    respond_to do |format|
      format.html { redirect_to project_stepins_url, notice: 'Project stepin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_stepin
      @project_stepin = ProjectStepin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_stepin_params
      params.require(:project_stepin).permit(:n_step, :n_project, :t_document)
    end
end
