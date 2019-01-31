# @Author: xiaojiezhang
# @Date:   2019-01-28T18:03:06-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T13:10:40-05:00



class OrdersController < OpenReadController
  before_action :set_order, only: %i[update destroy]
  # GET /orders
  def index
    @orders = Order.all

    render json: @orders
  end

  # GET /orders/1
  def show
    render json: Order.find(params[:id])
  end

  # POST /orders
  def create
    #@order = Order.new(order_params)
    @order = current_user.orders.build(order_params)

    if @order.save
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      #@order = Order.find(params[:id])
      @order = current_user.orders.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:customer_id, :product_id, :amount)
    end
end
