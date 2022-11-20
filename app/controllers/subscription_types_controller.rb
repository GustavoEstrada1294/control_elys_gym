class SubscriptionTypesController < ApplicationController
    before_action :authenticate_user!
    def index
        @subscription_types = SubscriptionType.all    
    end

    def new
        @subscription_type = SubscriptionType.new
    end

    
    def create
        subscription_type = SubscriptionType.new(subscription_type_params)
        
        if subscription_type.save
            redirect_to subscription_types_path
        else
            render :new            
        end
    end

    

    private

    def subscription_type_params
        params.require(:subscription_type).permit(:name, :total)
    end


end