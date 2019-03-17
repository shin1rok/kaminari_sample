module RedirectAction
  extend ActiveSupport::Concern

  def redirect_users_action
    redirect_to({ action: :index }, notice: 'redirect_users_action is done!')
  end
end
