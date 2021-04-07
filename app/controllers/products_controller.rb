class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update]

  def index
    @products = Product.all
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    p product_params
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render 'edit'
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :manufacturer, :name, :status, :made_to_order,
      :started_at, :ended_at, :reserved_at, :scheduled_arrival, :url, :note
    )
  end
end
