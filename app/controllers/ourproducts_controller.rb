class OurproductsController < ApplicationController
  before_action :set_ourproduct, only: %i[ show edit update destroy ]

  # GET /ourproducts or /ourproducts.json
  def index
    @ourproducts = Ourproduct.all
  end

  # GET /ourproducts/1 or /ourproducts/1.json
  def show
  end

  # GET /ourproducts/new
  def new
    @ourproduct = Ourproduct.new
  end

  # GET /ourproducts/1/edit
  def edit
  end

  # POST /ourproducts or /ourproducts.json
  def create
    @ourproduct = Ourproduct.new(ourproduct_params)

    respond_to do |format|
      if @ourproduct.save
        format.html { redirect_to @ourproduct, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @ourproduct }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ourproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ourproducts/1 or /ourproducts/1.json
  def update
    respond_to do |format|
      if @ourproduct.update(ourproduct_params)
        format.html { redirect_to @ourproduct, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @ourproduct }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ourproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ourproducts/1 or /ourproducts/1.json
  def destroy
    @ourproduct.destroy
    respond_to do |format|
      format.html { redirect_to ourproducts_url, notice: "Product was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ourproduct
      @ourproduct = Ourproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ourproduct_params
      params.require(:ourproduct).permit(:prod_name, :prod_price, :prod_description, :prod_image)
    end
end
