class UnitInstructorsController < ApplicationController
  before_action :set_unit_instructor, only: [:show, :edit, :update, :destroy]
  include SkipAuthorization

  # GET /unit_instructors
  # GET /unit_instructors.json
  def index
    @unit_instructors = UnitInstructor.all
  end

  # GET /unit_instructors/1
  # GET /unit_instructors/1.json
  def show
  end

  # GET /unit_instructors/new
  def new
    @unit_instructor = UnitInstructor.new
  end

  # GET /unit_instructors/1/edit
  def edit
  end

  # POST /unit_instructors
  # POST /unit_instructors.json
  def create
    @unit_instructor = UnitInstructor.new(unit_instructor_params)

    respond_to do |format|
      if @unit_instructor.save
        format.html { redirect_back(fallback_location: @unit_instructor.delivery) }
        # format.json { render :show, status: :created, location: @unit_instructor }
      else
        format.html { redirect_back(fallback_location: @unit_instructor.delivery) }
        # format.json { render json: @unit_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_instructors/1
  # PATCH/PUT /unit_instructors/1.json
  def update
    respond_to do |format|
      if @unit_instructor.update(unit_instructor_params)
        format.html { redirect_to @unit_instructor, notice: 'Unit instructor was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit_instructor }
      else
        format.html { render :edit }
        format.json { render json: @unit_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_instructors/1
  # DELETE /unit_instructors/1.json
  def destroy
    @unit_instructor.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: @unit_instructor.delivery) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_instructor
      @unit_instructor = UnitInstructor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_instructor_params
      params.require(:unit_instructor).permit(:delivery_id, :user_id)
    end
end
