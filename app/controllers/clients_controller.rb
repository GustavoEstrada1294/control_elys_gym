class ClientsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_client, except:[:index,:new,:create]

    def index
        @clients = Client.all
        
    end

    def show   
    end
    
    def new
        @client = Client.new
    end
    
    def create
        @client = current_user.clients.new(client_params)
        
        if @client.save
            redirect_to clients_path
        else
            render :new
            
        end
    end
    
    def edit
    end

    def destroy
        @client.destroy 
        redirect_to clients_path
    end

    def update
        
        if @client.update(client_params)
            redirect_to @client
        else
            render :edit
        end
    end

    private

    def set_client
        @client = Client.find(params[:id])
    end


    def client_params
        params.require(:client).permit(:name)
    end

end
