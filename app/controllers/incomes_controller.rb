class IncomesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        if params[:start_date].present? && params[:end_date].present?
            first_date = params[:start_date]
            end_date = params[:end_date]
            @total_range =  Payment.where(:created_at => first_date..end_date).sum(:total)
        
        
            end_date = Date.today.end_of_month
            first_date =Date.today.at_beginning_of_month    
        end
        end_date = Date.today.end_of_month
        first_date =Date.today.at_beginning_of_month
        @total_month =  Payment.where(:created_at => first_date..end_date).sum(:total)
        @total =  Payment.sum("total") 
        
    end

    
end
