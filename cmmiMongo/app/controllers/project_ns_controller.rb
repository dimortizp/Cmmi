class ProjectNsController < ApplicationController
  before_action :set_project_n, only: [:show, :edit, :update, :destroy]

  # GET /project_ns
  # GET /project_ns.json
  def index
    @project_ns = ProjectN.all
  end

  # GET /project_ns/1
  # GET /project_ns/1.json
  def show
  end

  # GET /project_ns/new
  def new
    @project_n = ProjectN.new
  end

  # GET /project_ns/1/edit
  def edit
  end

  # POST /project_ns
  # POST /project_ns.json
  def create
    @project_n = ProjectN.new(project_n_params)

    respond_to do |format|
      if @project_n.save
        format.html { redirect_to @project_n, notice: 'Project n was successfully created.' }
        format.json { render :show, status: :created, location: @project_n }
      else
        format.html { render :new }
        format.json { render json: @project_n.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_ns/1
  # PATCH/PUT /project_ns/1.json
  def update
    respond_to do |format|
      if @project_n.update(project_n_params)
        format.html { redirect_to @project_n, notice: 'Project n was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_n }
      else
        format.html { render :edit }
        format.json { render json: @project_n.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_ns/1
  # DELETE /project_ns/1.json
  def destroy
    @project_n.destroy
    respond_to do |format|
      format.html { redirect_to project_ns_url, notice: 'Project n was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_n
      @project_n = ProjectN.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_n_params
      params.require(:project_n).permit(:t_name)
    end
end
