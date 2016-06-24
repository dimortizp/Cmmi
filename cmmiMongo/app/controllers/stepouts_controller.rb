class StepoutsController < ApplicationController
  before_action :set_stepout, only: [:show, :edit, :update, :destroy]

  # GET /stepouts
  # GET /stepouts.json
  def index
    @stepouts = Stepout.all
  end

  # GET /stepouts/1
  # GET /stepouts/1.json
  def show
  end

  # GET /stepouts/new
  def new
    @stepout = Stepout.new
  end

  # GET /stepouts/1/edit
  def edit
  end

  # POST /stepouts
  # POST /stepouts.json
  def create
    @stepout = Stepout.new(stepout_params)

    respond_to do |format|
      if @stepout.save
        format.html { redirect_to @stepout, notice: 'Stepout was successfully created.' }
        format.json { render :show, status: :created, location: @stepout }
      else
        format.html { render :new }
        format.json { render json: @stepout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stepouts/1
  # PATCH/PUT /stepouts/1.json
  def update
    respond_to do |format|
      if @stepout.update(stepout_params)
        format.html { redirect_to @stepout, notice: 'Stepout was successfully updated.' }
        format.json { render :show, status: :ok, location: @stepout }
      else
        format.html { render :edit }
        format.json { render json: @stepout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stepouts/1
  # DELETE /stepouts/1.json
  def destroy
    @stepout.destroy
    respond_to do |format|
      format.html { redirect_to stepouts_url, notice: 'Stepout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stepout
      @stepout = Stepout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stepout_params
      params.require(:stepout).permit(:n_step, :t_format)
    end
end
