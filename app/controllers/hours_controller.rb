class HoursController < ApplicationController
  before_action :set_hour, only: [:show, :edit, :update, :destroy]
  include SkipAuthorization
  skip_before_action :authenticate_user!

  # GET /hours
  # GET /hours.json
  def index
    @hours = current_user.hours.order('start ASC')
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "index",   # Excluding ".pdf" extension.
        margin: { bottom: 15, top: 25 },
        dpi: 300,

        orientation: 'landscape'
      end
    end
  end

  # GET /hours/1
  # GET /hours/1.json
  def show; end

  # GET /hours/new
  def new
    @hour = Hour.new
  end

  # GET /hours/1/edit
  def edit; end

  # POST /hours
  # POST /hours.json
  def create
    @hour = current_user.hours.build(hour_params)
    @hours = current_user.hours.order('start ASC')
    respond_to do |format|
      if @hour.save
        format.html { redirect_to hours_path, notice: 'Hours were added.' }
        format.json { render :index, status: :created, location: @hours }
      else
        format.html { render :new }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hours/1
  # PATCH/PUT /hours/1.json
  def update
    respond_to do |format|
      if @hour.update(hour_params)
        format.html { redirect_to @hour, notice: 'hour was successfully updated.' }
        format.json { respond_with_bip(@hour) }
      else
        format.html { render :edit }
        format.json { respond_with_bip(@hour) }
      end
    end
  end

  # DELETE /hours/1
  # DELETE /hours/1.json
  def destroy
    @hour.destroy
    respond_to do |format|
      format.html { redirect_to hours_url, notice: 'Hour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hour
    @hour = Hour.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def hour_params
    params.require(:hour).permit(:start, :end, :break, :comment, :user_id, :work_type, :submitted, :timesheet_id)
  end
end
