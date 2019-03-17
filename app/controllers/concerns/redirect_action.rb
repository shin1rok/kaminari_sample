module RedirectAction
  extend ActiveSupport::Concern

  def redirect_users
    redirect_with_kept_pagination_params(action: :index, notice: 'redirect_users_action is done!')
  end
end
