module UserAuthentication
  def self.included(controller)
    controller.send :helper_method, :current_user, :logged_in?, :redirect_to_target_or_default
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user
  end

  def login_required
    unless logged_in?
      store_target_location
      redirect_to signin_path
    end
  end

  def redirect_to_target_or_default(default, *args)
    redirect_to(session[:return_to] || default, *args)
    session[:return_to] = nil
  end

  private

  def store_target_location
    session[:return_to] = request.url
  end
end