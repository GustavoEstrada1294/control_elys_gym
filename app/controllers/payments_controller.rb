class PaymentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_payment, except:[:index,:new,:create]
    def index
        @payments =Payment.all
        if params[:start_date].present? && params[:end_date].present?
            first_date = params[:start_date]
            end_date = params[:end_date]
            @payments = Payment.where(:created_at => first_date..end_date)
        
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
        @payment.destroy
        redirect_to payments_path
    end

    def update
        
        if @payment.update(payment_params)
            redirect_to @payment
        else
            render :edit
        end
    end


    private

    def set_payment
        @payment = Payment.find(params[:id])
    end

    def payment_params
        params.require(:payment).permit(:product_id, :client_id, :subscription_type_id)
    end

end