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

    if @product.save
      redirect_to admin_product_url(@product)
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def update
    @product = Product.find(params[:id])
    @product.attributes = product_params
    @categories = Category.all
    @product.categories = Category.find(params[:product][:category_ids]) unless params[:product][:category_ids].nil?

    if params[:product][:category_ids]
      removed_categories = @product.categories.where("id NOT IN (?)", params[:product][:category_ids])

      removed_categories.each do |category|
        @product.categories.delete(category)
      end
    else
      @product.categories.clear
    end

    if @product.save
      redirect_to admin_product_url(@product)
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id]).destroy
    redirect_to admin_products_url
  end

  private

  def product_params
    params.require(:product).permit(:name, :SKU, :price, :featured, :product_image)
  end
end
