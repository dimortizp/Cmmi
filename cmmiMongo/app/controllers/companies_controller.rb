
  #require File.join(Rails.root, "lib/assets/import_yaml.rb")
class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)
    import(@company.processmap_file_name)
    respond_to do |format|
      if @company.save

        format.html { redirect_to @company, notice: 'La compañia fue creada, satisfactoriamente' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    @import = Import.new
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'La compañia fue actializada, satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @company }
        @import.remove_previous_steps(@company.id)
        @import.import(@company.processmap.path)
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'La compañia fue eliminada, satisfactoriamente..' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:t_name, :t_logo, :t_slogan, :processmap)
    end
end
# define class Import
class Import
  def initialize()  
    # Instance variables  
    @links = Array.new
  end 
  def import file_name
    process = YAML.load_file(file_name)
    save_steps process
    link_steps process
  end

  def remove_previous_steps company_id
    Step.all.delete_all
  end

  def save_steps process
    #byebug
    process.each { |name, step|
      
      if 'LINK' != step['type']
        contains_process = step.include?'steps'
        step['id'] = save_step step['type'], step['desc'], step['practice'], contains_process, name
        if contains_process
          save_steps step['steps']
        end
      else
        @links.select{|name,practice_code| link.practice_code = step['practice']}
      end
      link = {"name"=>name, "practice_code"=>step['practice'], "step_id" => step['id']}
      @links.push(link)
    }
  end

  def link_steps process
    process.each { |name, step|

    }
  end

  def save_step type, desc, practice_code, contains_process, name
    practice_id = find_practice_for_code practice_code
    @step = Step.new
    @step.t_description = desc
    unless practice_id == 0
      @step.practice_id = practice_id
    end
    @step.contains_process = contains_process
    @step.t_typestep = name

    if @step.save
      return @step.id
    else
      return 0
    end
  end

  def find_practice_for_code practice_code
    #byebug
    @practice = Practice.find_by_t_code(practice_code)
    if nil == @practice
      return 0
    else
      return @practice.id
    end
    ##
  end
end