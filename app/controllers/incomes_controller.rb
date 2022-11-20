class IncomesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @end_date = Date.today.end_of_month
       @total =  Payment.sum("total") 
    end

   
end
