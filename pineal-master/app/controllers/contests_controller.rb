class ContestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_contest, only: [:show, :edit, :update, :destroy]
  
  
  # GET /contests
  # GET /contests.json
  def index
    if(params[:finished].present?)
      @contests = Contest.where.not(:completed => 0).order("f_creacion DESC")
    else
      @contests = Contest.where.not(:completed => 1).order("f_creacion DESC")
      
    end
  end

  # GET /contests/1
  # GET /contests/1.json
  def show
    @postulants = @contest.postulants
  end

  # GET /contests/new
  def new
    @contest = Contest.new
    if(params[:position].present?)
      @position = Position.find(params[:position])
    end
  end

  # GET /contests/1/edit
  def edit
    if(params[:position].present?)
      @position = Position.find(params[:position])
    end
  end

  # POST /contests
  # POST /contests.json
  def create
    @contest = Contest.new(contest_params)
    @contest.completed = 0
    @contest.dias = 0

    respond_to do |format|
      if @contest.save
        format.html { redirect_to Position.find(@contest.position_id), notice: 'Contest was successfully created.' }
        format.json { render :show, status: :created, location: @contest }
      else
        format.html { redirect_to root_path, alert: 'No se pudo crear tu concurso, vuelva atras' }
        format.html { render :new }
        format.json { render json: @contest, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contests/1
  # PATCH/PUT /contests/1.json
  def update
    respond_to do |format|
      if @contest.update(contest_params)
        format.html { redirect_to Position.find(@contest.position_id), notice: 'Contest was successfully updated.' }
        format.json { render :show, status: :ok, location: @contest }
      else
        format.html { render :edit }
        format.json { render json: @contest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contests/1
  # DELETE /contests/1.json
  def destroy
    @parent_contest = @contest.position_id
    @contest.destroy
    respond_to do |format|
      format.html { redirect_to Position.find(@parent_contest), notice: 'Contest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def complete
    # mark as completed
    @contest = Contest.find(params[:contest_id])
    @contest.update(completed: 1)
    return redirect_to root_path;
  end

  def incomplete
    # mark as completed
    @contest = Contest.find(params[:contest_id])
    @contest.update(completed: 0)
    return redirect_to root_path(:finished => 1);
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contest
      @contest = Contest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contest_params
      params.require(:contest).permit(:dias, :f_creacion, :f_apertura, :f_aprobacion, :f_ingreso, :comentario, :status, :position_id)
    end
end
