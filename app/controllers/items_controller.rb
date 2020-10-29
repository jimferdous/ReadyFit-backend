class ItemsController < ApplicationController
    def index
        items = Item.all
    
        # inverse of except is only
        render json: items, except: [:updated_at, :created_at] 
      end
    
      def create
        item = Item.new(item_params)
    
        if item.save
          render json: item
        else
          render json: {error: item.errors.full_messages}, status: :not_acceptable
        end
    
      end




      private 

      def item_params
        params.require(:item).permit(:name, :image, :description, :price)
      end
end
