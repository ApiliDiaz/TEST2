class BoolsController < ApplicationController
  before_action :set_bool, only: [:show, :edit, :update, :destroy]

  # GET /bools
  # GET /bools.json
  def index
    @bools = Bool.all
  end

  # GET /bools/1
  # GET /bools/1.json
  def show
  end

  # GET /bools/new
  def new
    @bool = Bool.new
  end

  # GET /bools/1/edit
  def edit
  end

  # POST /bools
  # POST /bools.json
  def create
    @bool = Bool.new(bool_params)

    respond_to do |format|
      if @bool.save
        format.html { redirect_to @bool, notice: 'Bool was successfully created.' }
        format.json { render :show, status: :created, location: @bool }
      else
        format.html { render :new }
        format.json { render json: @bool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bools/1
  # PATCH/PUT /bools/1.json
  def update
    respond_to do |format|
      if @bool.update(bool_params)
        format.html { redirect_to @bool, notice: 'Bool was successfully updated.' }
        format.json { render :show, status: :ok, location: @bool }
      else
        format.html { render :edit }
        format.json { render json: @bool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bools/1
  # DELETE /bools/1.json
  def destroy
    @bool.destroy
    respond_to do |format|
      format.html { redirect_to bools_url, notice: 'Bool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bool
      @bool = Bool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bool_params
      params.require(:bool).permit(:bool)
    end
end
