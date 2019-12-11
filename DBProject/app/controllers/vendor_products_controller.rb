class VendorProductsController < ApplicationController
  before_action :set_vendor_product, only: [:show, :edit, :update, :destroy]

  # GET /vendor_products
  # GET /vendor_products.json
  def index
    @vendor_products = VendorProduct.all
  end

  # GET /vendor_products/1
  # GET /vendor_products/1.json
  def show
  end

  # GET /vendor_products/new
  def new
    @vendor_product = VendorProduct.new
  end

  # GET /vendor_products/1/edit
  def edit
  end

  # POST /vendor_products
  # POST /vendor_products.json
  def create
    @vendor_product = VendorProduct.new(vendor_product_params)

    respond_to do |format|
      if @vendor_product.save
        format.html { redirect_to @vendor_product, notice: 'Vendor product was successfully created.' }
        format.json { render :show, status: :created, location: @vendor_product }
      else
        format.html { render :new }
        format.json { render json: @vendor_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendor_products/1
  # PATCH/PUT /vendor_products/1.json
  def update
    respond_to do |format|
      if @vendor_product.update(vendor_product_params)
        format.html { redirect_to @vendor_product, notice: 'Vendor product was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor_product }
      else
        format.html { render :edit }
        format.json { render json: @vendor_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_products/1
  # DELETE /vendor_products/1.json
  def destroy
    @vendor_product.destroy
    respond_to do |format|
      format.html { redirect_to vendor_products_url, notice: 'Vendor product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_product
      @vendor_product = VendorProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_product_params
      params.require(:vendor_product).permit(:productid, :producttype)
    end
end
