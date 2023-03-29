class PaymentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_payment, except:[:index,:new,:create, :expirations]

    def index
        @payments = Payment.joins(:client).where("clients.user_id = ?", current_user ).order(created_at: :desc).paginate(:page =>params[:page], per_page: 10)
        
        if params[:start_date].present? && params[:end_date].present?
            first_date = params[:start_date]
            end_date = params[:end_date]
            @payments = Payment.joins(:client).where("clients.user_id = ?", current_user ).where(:created_at => first_date..end_date).order(created_at: :desc).paginate(:page =>params[:page], per_page: 10)
        
        end
        
    end

    def show      
    end

    def new
        @payment = Payment.new
    end

    def create
        @payment = Payment.new(payment_params)
        
        
        if @payment.save
            redirect_to payments_path
        else
            render :new
        end
    end

    def edit        
    end

    def destroy 
        #@payment.destroy
        #redirect_to payments_path
    end

    def update
        
        #if @payment.update(payment_params)
        #    redirect_to @payment
        #else
        #    render :edit
        #end
    end

    def expirations
        #@payments =Payment.all
        @payments = Payment.joins(:client).where("clients.user_id = ?", current_user ).paginate(:page =>params[:page], per_page: 10)
    end


    private

    def set_payment
        @payment = Payment.find(params[:id])
    end

    def payment_params
        params.require(:payment).permit(:product_id, :client_id, :subscription_type_id)
    end

end