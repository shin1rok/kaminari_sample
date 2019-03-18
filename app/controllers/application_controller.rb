class ApplicationController < ActionController::Base

  def keep_last_pagination_data
    session[:last_pagination_data] = { params:     request.query_parameters,
                                       controller: controller_name,
                                       action:     action_name }
  end

  def discard_last_pagination_data
    session[:last_pagination_data] = nil
  end

  def load_pagination_params(action)
    ret = {}
    if (data = session[:last_pagination_data])
      if data["controller"] == controller_name && data["action"] == action.to_s
        ret = data["params"]
      end
    end
    discard_last_pagination_data
    ret
  end

  def redirect_with_kept_pagination_params(action:, **args)
    redirect_to({ action: action, params: load_pagination_params(action) }, args)
  end
end
