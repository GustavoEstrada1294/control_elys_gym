class SubscriptionTypesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_subscription_type, except:[:index,:new,:create]
    
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

    def edit
        
    end

    def show   
       
    end


    def update
    
        if @subscription_type.update(subscription_type_params)
            redirect_to @subscription_type
        else
            render :edit
        end
    end


    

    private
    def set_subscription_type
        @subscription_type = SubscriptionType.find(params[:id])
    end

    def subscription_type_params
        params.require(:subscription_type).permit(:name, :total)
    end


end