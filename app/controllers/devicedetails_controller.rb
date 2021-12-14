class DevicedetailsController < ApplicationController
  require 'json'

  before_action :set_devicedetail, only: %i[ show edit update destroy ]

  # GET /devicedetails or /devicedetails.json
  def index
    @devicedetails = Devicedetail.all
  end

  # GET /devicedetails/1 or /devicedetails/1.json
  def show
    @devicedetails = Devicedetail.all
  end

  # GET /devicedetails/new
  def new
    @devicedetail = Devicedetail.new
    @devicedetails = Devicedetail.all
  end

  # GET /devicedetails/1/edit
  def edit
    @devicedetails = Devicedetail.all
  end

  # POST /devicedetails or /devicedetails.json
  def create
    @devicedetail = Devicedetail.new(devicedetail_params)
    respond_to do |format|
      if @devicedetail.save
        str_data = @devicedetail.get_device_info
        if str_data.present?
          data = JSON.parse(str_data)
          @devicedetail.update(brand: data['brand'], model: data['model'])
        end
        format.html { redirect_to new_devicedetail_path, notice: "Device was successfully created." }
        format.json { render :new, status: :created, location: @devicedetail }
      else
        format.html { render :show, status: :unprocessable_entity }
        format.json { render json: @devicedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devicedetails/1 or /devicedetails/1.json
  def update
    respond_to do |format|
      if @devicedetail.update(devicedetail_params)
        format.html { redirect_to new_devicedetail_path, notice: "Device was successfully updated." }
        format.json { render :edit, status: :ok, location: @devicedetail }
      else
        format.html { render :show, status: :unprocessable_entity }
        format.json { render json: @devicedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devicedetails/1 or /devicedetails/1.json
  def destroy
    @devicedetail.destroy
    respond_to do |format|
      format.html { redirect_to new_devicedetail_path, notice: "Device was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devicedetail
      @devicedetail = Devicedetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def devicedetail_params
      params.require(:devicedetail).permit(:imei, :brand, :model, :device_type, :ram, :built_in_mem, :battery, :op_sys, :chipset)
    end
end
