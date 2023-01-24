class ProductsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_product, except:[:index,:new,:create]
    def index
        @products = Product.all.paginate(:page =>params[:page], per_page: 12)
    end

    def show
    end

    def create
        @product = Product.new(product_params)
        
        if @product.save
            redirect_to products_path
        else
            render :new
            
        end
    end

    def new
        @product = Product.new
    end

    def destroy
        @product.destroy
        redirect_to products_path
    end


    def edit
    end
  
    def update
        
        if @product.update(product_params)
            redirect_to @product
        else
            render :edit
        end
    end



    private

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:trademark, :type_product, :price, :name, :description, :image)
    end
end