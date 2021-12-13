class StretchesController < ApplicationController
  before_action :set_stretch, only: %i[ show edit update destroy ]

  # GET /stretches or /stretches.json
  def index
    @stretches = Stretch.all
  end

  # GET /stretches/1 or /stretches/1.json
  def show
  end

  # GET /stretches/new
  def new
    @stretch = Stretch.new
  end

  # GET /stretches/1/edit
  def edit
  end

  # POST /stretches or /stretches.json
  def create
    @stretch = Stretch.new(stretch_params)

    respond_to do |format|
      if @stretch.save
        format.html { redirect_to @stretch, notice: "Stretch was successfully created." }
        format.json { render :show, status: :created, location: @stretch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stretch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stretches/1 or /stretches/1.json
  def update
    respond_to do |format|
      if @stretch.update(stretch_params)
        format.html { redirect_to @stretch, notice: "Stretch was successfully updated." }
        format.json { render :show, status: :ok, location: @stretch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stretch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stretches/1 or /stretches/1.json
  def destroy
    @stretch.destroy
    respond_to do |format|
      format.html { redirect_to stretches_url, notice: "Stretch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stretch
      @stretch = Stretch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stretch_params
      params.require(:stretch).permit(:start_datetime, :end_datetime, :start_place_lat, :start_place_lon, :end_place_lat, :end_place_lon, :route_id)
    end
end
