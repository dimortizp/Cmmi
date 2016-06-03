class BaseLinesController < ApplicationController
  before_action :set_base_line, only: [:show, :edit, :update, :destroy]

  # GET /base_lines
  # GET /base_lines.json
  def index
    @base_lines = BaseLine.all
  end

  # GET /base_lines/1
  # GET /base_lines/1.json
  def show
  end

  # GET /base_lines/new
  def new
    @base_line = BaseLine.new
  end

  # GET /base_lines/1/edit
  def edit
  end

  # POST /base_lines
  # POST /base_lines.json
  def create
    @base_line = BaseLine.new(base_line_params)

    respond_to do |format|
      if @base_line.save
        format.html { redirect_to @base_line, notice: 'Base line was successfully created.' }
        format.json { render :show, status: :created, location: @base_line }
      else
        format.html { render :new }
        format.json { render json: @base_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_lines/1
  # PATCH/PUT /base_lines/1.json
  def update
    respond_to do |format|
      if @base_line.update(base_line_params)
        format.html { redirect_to @base_line, notice: 'Base line was successfully updated.' }
        format.json { render :show, status: :ok, location: @base_line }
      else
        format.html { render :edit }
        format.json { render json: @base_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_lines/1
  # DELETE /base_lines/1.json
  def destroy
    @base_line.destroy
    respond_to do |format|
      format.html { redirect_to base_lines_url, notice: 'Base line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_line
      @base_line = BaseLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_line_params
      params.require(:base_line).permit(:t_name, :n_date)
    end
end
