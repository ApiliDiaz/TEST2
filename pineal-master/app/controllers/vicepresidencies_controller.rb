class VicepresidenciesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vicepresidency, only: [:show, :edit, :update, :destroy]

  # GET /vicepresidencies
  # GET /vicepresidencies.json
  def index
    @vicepresidencies = Vicepresidency.all
  end

  # GET /vicepresidencies/1
  # GET /vicepresidencies/1.json
  def show
    @managements = @vicepresidency.managements
  end

  # GET /vicepresidencies/new
  def new
    @vicepresidency = Vicepresidency.new
  end

  # GET /vicepresidencies/1/edit
  def edit
  end

  # POST /vicepresidencies
  # POST /vicepresidencies.json
  def create
    @vicepresidency = Vicepresidency.new(vicepresidency_params)

    respond_to do |format|
      if @vicepresidency.save
        format.html { redirect_to vicepresidencies_url, notice: 'Vicepresidency was successfully created.' }
        format.json { render :show, status: :created, location: @vicepresidency }
      else
        format.html { render :new }
        format.json { render json: @vicepresidency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vicepresidencies/1
  # PATCH/PUT /vicepresidencies/1.json
  def update
    respond_to do |format|
      if @vicepresidency.update(vicepresidency_params)
        format.html { redirect_to vicepresidencies_url, notice: 'Vicepresidency was successfully updated.' }
        format.json { render :show, status: :ok, location: @vicepresidency }
      else
        format.html { render :edit }
        format.json { render json: @vicepresidency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vicepresidencies/1
  # DELETE /vicepresidencies/1.json
  def destroy
    @vicepresidency.destroy
    respond_to do |format|
      format.html { redirect_to vicepresidencies_url, notice: 'Vicepresidency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vicepresidency
      @vicepresidency = Vicepresidency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vicepresidency_params
      params.require(:vicepresidency).permit(:sigla)
    end
end
