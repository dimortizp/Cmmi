class ProjectStepMsController < ApplicationController
  before_action :set_project_step_m, only: [:show, :edit, :update, :destroy]

  # GET /project_step_ms
  # GET /project_step_ms.json
  def index
    @project_step_ms = ProjectStepM.all
  end

  # GET /project_step_ms/1
  # GET /project_step_ms/1.json
  def show
  end

  # GET /project_step_ms/new
  def new
    @project_step_m = ProjectStepM.new
  end

  # GET /project_step_ms/1/edit
  def edit
  end

  # POST /project_step_ms
  # POST /project_step_ms.json
  def create
    @project_step_m = ProjectStepM.new(project_step_m_params)

    respond_to do |format|
      if @project_step_m.save
        format.html { redirect_to @project_step_m, notice: 'Project step m was successfully created.' }
        format.json { render :show, status: :created, location: @project_step_m }
      else
        format.html { render :new }
        format.json { render json: @project_step_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_step_ms/1
  # PATCH/PUT /project_step_ms/1.json
  def update
    respond_to do |format|
      if @project_step_m.update(project_step_m_params)
        format.html { redirect_to @project_step_m, notice: 'Project step m was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_step_m }
      else
        format.html { render :edit }
        format.json { render json: @project_step_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_step_ms/1
  # DELETE /project_step_ms/1.json
  def destroy
    @project_step_m.destroy
    respond_to do |format|
      format.html { redirect_to project_step_ms_url, notice: 'Project step m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_step_m
      @project_step_m = ProjectStepM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_step_m_params
      params.require(:project_step_m).permit(:n_step, :n_project, :t_document, :t_type)
    end
end
