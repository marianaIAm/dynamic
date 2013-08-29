class ClientsController < ApplicationController
  # GET /clients
  # GET /clients.json
  def index
    #render json: current_account.Client.all
    render json: Client.where(trainer_id: current_trainer_id)
  end

  # GET /clients/:id
  # GET /clients/:id.json
  def show
    render json: Client.find(params[:id])
  end
end