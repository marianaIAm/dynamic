class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_trainer_id
  helper_method :current_client_id

  private

  def current_trainer_id
    trainer_id = Trainer.select(:id).where(account_id: current_account)
  end

  def current_client_id
    client_id = Client.select(:id).where(account_id: current_account)
  end
end
