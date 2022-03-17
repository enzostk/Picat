module CartHelper
  private

  def require_login
    unless current_user != nil
      redirect_to new_user_session_path
    end
  end
end
