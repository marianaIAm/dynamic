class TrainersController < ApplicationController
  # GET /trainers
  # GET /trainers.json

  def index
    if signed_in?
      render json: Trainer.where(trainer_id: current_trainer_id)
    else
      redirect_to new_account_session_path
    end
  end

  # def index
  #   render json: Trainer.all
  # end

  # GET /trainers/:id
  # GET /trainers/:id.json
  def show
    render json: Trainer.find(params[:id])
  end
end