class PostulantsController < ApplicationController
  before_action :set_postulant, only: %i[ show edit update destroy ]

  # GET /postulants or /postulants.json
  def index
    @postulants = Postulant.all
  end

  # GET /postulants/1 or /postulants/1.json
  def show
  end

  # GET /postulants/new
  def new
    @postulant = Postulant.new
  end

  # GET /postulants/1/edit
  def edit
  end

  # POST /postulants or /postulants.json
  def create
    @postulant = Postulant.new(postulant_params)

    respond_to do |format|
      if @postulant.save
        format.html { redirect_to postulant_url(@postulant), notice: "Postulant was successfully created." }
        format.json { render :show, status: :created, location: @postulant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @postulant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulants/1 or /postulants/1.json
  def update
    respond_to do |format|
      if @postulant.update(postulant_params)
        format.html { redirect_to postulant_url(@postulant), notice: "Postulant was successfully updated." }
        format.json { render :show, status: :ok, location: @postulant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @postulant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulants/1 or /postulants/1.json
  def destroy
    @postulant.destroy

    respond_to do |format|
      format.html { redirect_to postulants_url, notice: "Postulant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulant
      @postulant = Postulant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postulant_params
      params.require(:postulant).permit(:description, :message, :user_id, :offer_id)
    end
end
