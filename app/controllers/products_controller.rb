# @Author: xiaojiezhang
# @Date:   2019-01-28T18:03:06-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T06:41:05-05:00



class ProductsController < OpenReadController
  #before_action :set_product, only: [:show, :update, :destroy]
  before_action :set_product, only: %i[update destroy]

  # GET /products
  def index
    @products = Product.all

    render json: @products
  end

  # GET /products/1
  def show
    render json: Product.find(params[:id])
  end

  # POST /products
  def create
    #@product = Product.new(product_params)
    @product = current_user.products.build(product_params)


    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      #@product = Product.find(params[:id])
      @product = current_user.products.find(params[:id])

    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:name, :description, :picture, :price, :allergen)
    end
end
