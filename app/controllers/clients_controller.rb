class ClientsController < ApplicationController
  require 'json'
  # GET /clients
  # GET /clients.json

  def index
    if signed_in?
      render json: Client.where(trainer_id: current_trainer_id)
    else
      redirect_to new_account_session_path
    end
  end

  # GET /clients/:id
  # GET /clients/:id.json
  def show
    # Need to add check to make sure currently signed in user is
    # authorized to view this data

    if signed_in?
      @client =  Client.find(params[:id])
      render json: @client.to_json(include: { workouts: { include: :exercises } })
    else
      redirect_to new_account_session_path
    end
  end
end