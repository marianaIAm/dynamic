class ClientsController < ApplicationController
  require 'json'
  # GET /clients
  # GET /clients.json
  def index
    #render json: current_account.Client.all
    render json: Client.where(trainer_id: current_trainer_id)
  end

  # GET /clients/:id
  # GET /clients/:id.json
  def show

    @client =  Client.find(params[:id])
    render json: @client.to_json(include: { workouts: { include: :exercises } })

    # clients_workouts = @client.workouts.select('workouts.*, programs.client_id').group_by(&:client_id)
    # render json: clients_workouts
  end
end