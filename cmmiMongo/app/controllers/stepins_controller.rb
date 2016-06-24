class StepinsController < ApplicationController
  before_action :set_stepin, only: [:show, :edit, :update, :destroy]

  # GET /stepins
  # GET /stepins.json
  def index
    @stepins = Stepin.all
  end

  # GET /stepins/1
  # GET /stepins/1.json
  def show
  end

  # GET /stepins/new
  def new
    @stepin = Stepin.new
  end

  # GET /stepins/1/edit
  def edit
  end

  # POST /stepins
  # POST /stepins.json
  def create
    @stepin = Stepin.new(stepin_params)

    respond_to do |format|
      if @stepin.save
        format.html { redirect_to @stepin, notice: 'Stepin was successfully created.' }
        format.json { render :show, status: :created, location: @stepin }
      else
        format.html { render :new }
        format.json { render json: @stepin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stepins/1
  # PATCH/PUT /stepins/1.json
  def update
    respond_to do |format|
      if @stepin.update(stepin_params)
        format.html { redirect_to @stepin, notice: 'Stepin was successfully updated.' }
        format.json { render :show, status: :ok, location: @stepin }
      else
        format.html { render :edit }
        format.json { render json: @stepin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stepins/1
  # DELETE /stepins/1.json
  def destroy
    @stepin.destroy
    respond_to do |format|
      format.html { redirect_to stepins_url, notice: 'Stepin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stepin
      @stepin = Stepin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stepin_params
      params.require(:stepin).permit(:n_step, :t_format)
    end
end
