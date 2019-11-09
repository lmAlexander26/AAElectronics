class VendorPOsController < ApplicationController
  before_action :set_vendor_po, only: [:show, :edit, :update, :destroy]

  # GET /vendor_pos
  # GET /vendor_pos.json
  def index
    @vendor_pos = VendorPo.all
  end

  # GET /vendor_pos/1
  # GET /vendor_pos/1.json
  def show
  end

  # GET /vendor_pos/new
  def new
    @vendor_po = VendorPo.new
  end

  # GET /vendor_pos/1/edit
  def edit
  end

  # POST /vendor_pos
  # POST /vendor_pos.json
  def create
    @vendor_po = VendorPo.new(vendor_po_params)

    respond_to do |format|
      if @vendor_po.save
        format.html { redirect_to @vendor_po, notice: 'Vendor po was successfully created.' }
        format.json { render :show, status: :created, location: @vendor_po }
      else
        format.html { render :new }
        format.json { render json: @vendor_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendor_pos/1
  # PATCH/PUT /vendor_pos/1.json
  def update
    respond_to do |format|
      if @vendor_po.update(vendor_po_params)
        format.html { redirect_to @vendor_po, notice: 'Vendor po was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor_po }
      else
        format.html { render :edit }
        format.json { render json: @vendor_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_pos/1
  # DELETE /vendor_pos/1.json
  def destroy
    @vendor_po.destroy
    respond_to do |format|
      format.html { redirect_to vendor_pos_url, notice: 'Vendor po was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_po
      @vendor_po = VendorPo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_po_params
      params.require(:vendor_po).permit(:PurchaseOrder, :productid)
    end
end
