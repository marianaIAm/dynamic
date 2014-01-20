class HomeController < ApplicationController
  require 'json'

  def index
    if signed_in?
      trainer = Trainer.where(account_id: current_account)
      @trainer_id = trainer[0].id
    end
  end
end
