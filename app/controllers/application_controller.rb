class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_trainer_id

  private

  def current_trainer_id
   # '29'
    #trainer_id = Trainer.select(:id).where(account_id: 58)
    trainer_id = Trainer.select(:id).where(account_id: current_account)

  end
end
