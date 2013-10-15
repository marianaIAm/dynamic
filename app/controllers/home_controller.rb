class HomeController < ApplicationController
  require 'json'

  def index
    if signed_in?
      trainer = Trainer.where(account_id: current_account)
      @trainer_id = trainer[0].id
    else
      redirect_to new_account_session_path
    end
  end
end
