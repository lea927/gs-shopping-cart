class ProductsController < ApplicationController
  def index
    @products = Product.paginate(page: params[:page], per_page: 2)
    # @posts = Post.paginate(page: params[:page])
  end
end
