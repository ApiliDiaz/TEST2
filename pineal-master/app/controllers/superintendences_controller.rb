class SuperintendencesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_superintendence, only: [:show, :edit, :update, :destroy]

  # GET /superintendences
  # GET /superintendences.json
  def index
    @superintendences = Superintendence.all
  end

  # GET /superintendences/1
  # GET /superintendences/1.json
  def show
    @positions = @superintendence.positions
  end

  # GET /superintendences/new
  def new
    @superintendence = Superintendence.new
    @managements = Management.all

    if(params[:management].present?)
      @management = Management.find(params[:management])
    end

  end

  # GET /superintendences/1/edit
  def edit
    @managements = Management.all

    if(params[:management].present?)
      @management = Management.find(params[:management])
    end

  end

  # POST /superintendences
  # POST /superintendences.json
  def create
    @superintendence = Superintendence.new(superintendence_params)
    @managements = Management.all

    respond_to do |format|
      if @superintendence.save
        format.html { redirect_to Management.find(@superintendence.management_id), notice: 'Superintendence was successfully created.' }
        format.json { render :show, status: :created, location: @superintendence }
      else
        format.html { render :new }
        format.json { render json: @superintendence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /superintendences/1
  # PATCH/PUT /superintendences/1.json
  def update
    respond_to do |format|
      if @superintendence.update(superintendence_params)
        format.html { redirect_to Management.find(@superintendence.management_id), notice: 'Superintendence was successfully updated.' }
        format.json { render :show, status: :ok, location: @superintendence }
      else
        format.html { render :edit }
        format.json { render json: @superintendence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /superintendences/1
  # DELETE /superintendences/1.json
  def destroy
    @parent_management = @superintendence.management_id
    @superintendence.destroy
    respond_to do |format|
      format.html { redirect_to Management.find(@parent_management), notice: 'Superintendence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_superintendence
      @superintendence = Superintendence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def superintendence_params
      params.require(:superintendence).permit(:nombre, :management_id)
    end
end
