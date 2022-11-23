class IncomesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        end_date = Date.today.end_of_month
        first_date =Date.today.at_beginning_of_month
       @total =  Payment.sum("total") 
       @total_month =  Payment.where(:created_at => first_date..end_date).sum(:total)
    end

   
end
