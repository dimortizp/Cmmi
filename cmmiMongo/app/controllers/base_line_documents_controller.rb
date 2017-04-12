class BaseLineDocumentsController < ApplicationController
  before_action :set_base_line_document, only: [:show, :edit, :update, :destroy]

  # GET /base_line_documents
  # GET /base_line_documents.json
  def index
    @base_line_documents = BaseLineDocument.all
  end

  # GET /base_line_documents/1
  # GET /base_line_documents/1.json
  def show
  end

  # GET /base_line_documents/new
  def new
    @base_line_document = BaseLineDocument.new
  end

  # GET /base_line_documents/1/edit
  def edit
  end

  # POST /base_line_documents
  # POST /base_line_documents.json
  def create
    @base_line_document = BaseLineDocument.new(base_line_document_params)

    respond_to do |format|
      if @base_line_document.save
        format.html { redirect_to @base_line_document, notice: 'Base line document was successfully created.' }
        format.json { render :show, status: :created, location: @base_line_document }
      else
        format.html { render :new }
        format.json { render json: @base_line_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_line_documents/1
  # PATCH/PUT /base_line_documents/1.json
  def update
    respond_to do |format|
      if @base_line_document.update(base_line_document_params)
        format.html { redirect_to @base_line_document, notice: 'Base line document was successfully updated.' }
        format.json { render :show, status: :ok, location: @base_line_document }
      else
        format.html { render :edit }
        format.json { render json: @base_line_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_line_documents/1
  # DELETE /base_line_documents/1.json
  def destroy
    @base_line_document.destroy
    respond_to do |format|
      format.html { redirect_to base_line_documents_url, notice: 'Base line document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_line_document
      @base_line_document = BaseLineDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def base_line_document_params
      params.require(:base_line_document).permit(:t_document, :t_state, :n_version)
    end
end
