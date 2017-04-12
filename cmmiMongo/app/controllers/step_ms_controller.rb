class StepMsController < ApplicationController
  before_action :set_step_m, only: [:show, :edit, :update, :destroy]

  # GET /step_ms
  # GET /step_ms.json
  def index
    @step_ms = StepM.all
  end

  # GET /step_ms/1
  # GET /step_ms/1.json
  def show
  end

  # GET /step_ms/new
  def new
    @step_m = StepM.new
  end

  # GET /step_ms/1/edit
  def edit
  end

  # POST /step_ms
  # POST /step_ms.json
  def create
    @step_m = StepM.new(step_m_params)

    respond_to do |format|
      if @step_m.save
        format.html { redirect_to @step_m, notice: 'Step m was successfully created.' }
        format.json { render :show, status: :created, location: @step_m }
      else
        format.html { render :new }
        format.json { render json: @step_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_ms/1
  # PATCH/PUT /step_ms/1.json
  def update
    respond_to do |format|
      if @step_m.update(step_m_params)
        format.html { redirect_to @step_m, notice: 'Step m was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_m }
      else
        format.html { render :edit }
        format.json { render json: @step_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_ms/1
  # DELETE /step_ms/1.json
  def destroy
    @step_m.destroy
    respond_to do |format|
      format.html { redirect_to step_ms_url, notice: 'Step m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_m
      @step_m = StepM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_m_params
      params.require(:step_m).permit(:n_step, :t_format, :t_type)
    end
end
