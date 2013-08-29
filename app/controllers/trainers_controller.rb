class TrainersController < ApplicationController
  # GET /trainers
  # GET /trainers.json
  def index
    render json: Trainer.all
  end

  # GET /trainers/:id
  # GET /trainers/:id.json
  def show
    render json: Trainer.find(params[:id])
  end
end