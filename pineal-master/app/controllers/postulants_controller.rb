class PostulantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_postulant, only: [:show, :edit, :update, :destroy]

  # GET /postulants
  # GET /postulants.json
  def index
    @postulants = Postulant.all
  end

  # GET /postulants/1
  # GET /postulants/1.json
  def show
  end

  # GET /postulants/new
  def new
    @postulant = Postulant.new
    if(params[:contest].present?)
      @contest = Contest.find(params[:contest])
    end
    @options = ['Apto', 'No Apto']
  end

  # GET /postulants/1/edit
  def edit
    @options = ['Apto', 'No Apto']
    if(params[:contest].present?)
      @contest = Contest.find(params[:contest])
    end
  end

  # POST /postulants
  # POST /postulants.json
  def create
    @postulant = Postulant.new(postulant_params)

    respond_to do |format|
      if @postulant.save
        format.html { redirect_to @postulant.contest, notice: 'Postulant was successfully created.' }
        format.json { render :show, status: :created, location: @postulant }
      else
        format.html { render :new }
        format.json { render json: @postulant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulants/1
  # PATCH/PUT /postulants/1.json
  def update
    respond_to do |format|
      if @postulant.update(postulant_params)
        format.html { redirect_to @postulant.contest, notice: 'Postulant was successfully updated.' }
        format.json { render :show, status: :ok, location: @postulant }
      else
        format.html { render :edit }
        format.json { render json: @postulant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulants/1
  # DELETE /postulants/1.json
  def destroy
    @parent_postulant = @postulant.contest
    @postulant.destroy
    respond_to do |format|
      format.html { redirect_to @parent_postulant, notice: 'Postulant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulant
      @postulant = Postulant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postulant_params
      params.require(:postulant).permit(:apto, :panel, :f_panel, :psicolaboral, :f_psicolaboral, :preocupacional, :f_preocupacional, :ajusta_renta, :r_esperada, :observaciones, :pasos_seguir, :nombre, :residencia, :ex_empleador, :ex_cargo, :origin_id, :contest_id)
    end
end
