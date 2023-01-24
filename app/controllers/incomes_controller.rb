class IncomesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        #@user.where("user_id = ?", current_user)
        #Payment.joins(:client).where("clients.user_id = ?", current_user )
        if params[:start_date].present? && params[:end_date].present?
            first_date = params[:start_date]
            end_date = params[:end_date]
            @total_range =  Payment.joins(:client).where("clients.user_id = ?", current_user ).where(:created_at => first_date..end_date).sum(:total)
        
        
            end_date = Date.today.end_of_month
            first_date =Date.today.at_beginning_of_month    
        end
        end_date = Date.today.end_of_month
        first_date =Date.today.at_beginning_of_month
        
        @total_month = Payment.joins(:client).where("clients.user_id = ?", current_user ).where(:created_at => first_date..end_date).sum(:total)
        @total = Payment.joins(:client).where("clients.user_id = ?", current_user ).sum("total")


        
        string = <<-SQL
            SELECT 
                SUM(CASE
                    WHEN subscription_types.name = 'mixto' 
                    THEN subscription_types.total / 2 
                    WHEN subscription_types.name = 'paquete' 
                    THEN subscription_types.total / 2 
                    ELSE subscription_types.total
                END) as total1 
                FROM payments 
                INNER JOIN subscription_types 
                ON payments.subscription_type_id = subscription_types.id
        SQL
 
        @result = ActiveRecord::Base.connection.execute(string)
        
    end
    
end
 