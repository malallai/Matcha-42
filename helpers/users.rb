helpers do
  def user_sign_in?
    if session['user_id'].nil? || session['user_id'].empty?
      flash[:alert] = 'You need to sign in'
      redirect '/users/login'
    end
  end

end
