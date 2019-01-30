# @Author: xiaojiezhang
# @Date:   2019-01-28T18:03:06-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T06:37:55-05:00



class CategoriesController < OpenReadController
  before_action :set_category, only: %i[update destroy]

  # GET /categories
  def index
    @categories = Category.all

    render json: @categories
  end

  # GET /categories/1
  def show
    render json: Category.find(params[:id])
  end

  # POST /categories
  def create
#    @category = Category.new(category_params)
    @category = current_user.categorys.build(category_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
#      @category = current_user.examples.find(params[:id])
      @category = current_user.categories.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:name)
    end
end
