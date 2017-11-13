class MarcaProveedorsController < ApplicationController
  before_action :set_marca_proveedor, only: [:show, :edit, :update, :destroy]

  # GET /marca_proveedors
  # GET /marca_proveedors.json
  def index
    @marca_proveedors = MarcaProveedor.all
  end

  # GET /marca_proveedors/1
  # GET /marca_proveedors/1.json
  def show
  end

  # GET /marca_proveedors/new
  def new
    @marca_proveedor = MarcaProveedor.new
  end

  # GET /marca_proveedors/1/edit
  def edit
  end

  # POST /marca_proveedors
  # POST /marca_proveedors.json
  def create
    @marca_proveedor = MarcaProveedor.new(marca_proveedor_params)

    respond_to do |format|
      if @marca_proveedor.save
        format.html { redirect_to @marca_proveedor, notice: 'Marca proveedor was successfully created.' }
        format.json { render :show, status: :created, location: @marca_proveedor }
      else
        format.html { render :new }
        format.json { render json: @marca_proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marca_proveedors/1
  # PATCH/PUT /marca_proveedors/1.json
  def update
    respond_to do |format|
      if @marca_proveedor.update(marca_proveedor_params)
        format.html { redirect_to @marca_proveedor, notice: 'Marca proveedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @marca_proveedor }
      else
        format.html { render :edit }
        format.json { render json: @marca_proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marca_proveedors/1
  # DELETE /marca_proveedors/1.json
  def destroy
    @marca_proveedor.destroy
    respond_to do |format|
      format.html { redirect_to marca_proveedors_url, notice: 'Marca proveedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca_proveedor
      @marca_proveedor = MarcaProveedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marca_proveedor_params
      params.require(:marca_proveedor).permit(:marca_id, :proveedore_id)
    end
end
