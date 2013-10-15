class HomeController < ApplicationController
  require 'json'

  def index
    @trainer = Trainer.select(:id).where(account_id: current_account).to_json

    if !@trainer.nil?
      @parsed_json = ActiveSupport::JSON.decode(@trainer)
      if !@parsed_json.nil? && @parsed_json.length > 0
        @trainer_id = @parsed_json[0]["id"]
      end
    end
  end
end
