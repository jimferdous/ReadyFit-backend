class CartcartController < ApplicationController
    def index
        carts = Cart.all
    
        # inverse of except is only
        render json: carts, except: [:updated_at, :created_at] 
      end
    
      def create
        cart = Cart.new(cart_params)
    
        if cart.save
          render json: cart
        else
          render json: {error: cart.errors.full_messages}, status: :not_acceptable
        end
    
      end




      private 

      def cart_params
        params.require(:cart).permit(:name, :image, :description, :price)
      end
end
