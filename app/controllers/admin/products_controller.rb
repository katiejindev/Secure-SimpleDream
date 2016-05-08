class Admin::ProductsController < Admin::BaseController
  def index
    @products = Product.order(:SKU)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    @categories = Category.all
    @product.categories = Category.find(params[:product][:category_ids]) unless params[:product][:category_ids].nil?
    @product.image_path = "products/lol.jpg"

    if @product.save
      redirect_to admin_product_url(@product)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :SKU, :price, :featured, :product_image)
  end
end
