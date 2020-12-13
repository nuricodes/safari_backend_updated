module Api
    module V1
        class ItemsController < ApplicationController
            # protect_from_forgery with: :null_session
            def index
                #get all the items from our database
                items = Item.all

                #use item serializer to pass item as a value to be converted to json
                render json: ItemSerializer.new(items, options).serialized_json
            end

            #same thing as index except this time we used find_by to get individual to get by individual slud param
            def show
                item = Item.find_by(slug: params[:slug])
                #pass in individual airline
                render json: ItemSerializer.new(item, options).serialized_json
            end

            def create
                item = Item.new(item_params) 

                if item.save #if we're able to save the record and everything is valid
                    render json: ItemSerializer.new(item).serialized_json
                else
                    render json: {error: item.errors.messages}, status: 422
                end
    
            end

            def update
                #instead of creating new instance of method do findby
                item = Item.find_by(slug: params[:slug])
                if item.update(item_params)
                    render json: ItemSerializer.new(item, options).serialized_json
                else
                    render json: {error: item.errors.messages}, status: 422
                end
            end

            def destroy
                #instead of creating new instance of method do findby
                item = Item.find_by(slug: params[:slug])
                if item.destroy
                    head :no_content
                else
                    render json: {error: item.errors.messages}, status: 422
                end
            end

            #adds strong parameters
            private

            #creates a white list of the parametes we want to allow and permits them
            def item_params
                params.required(:item).permit(:name, :image_url, :price, :description)
            end

            def options
                #instance variable equal to a hash and specify the resources we want to include whichis reviews
                @options ||= {include: %i[reviews]}
            end
        end
    end
end