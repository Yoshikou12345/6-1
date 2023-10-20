class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(uid: params[:uid], pass: params[:pass])

    if user
      session[:login_uid] = user.uid
      flash[:success] = 'ログイン成功'
      redirect_to root_path
    else
      flash[:error] = 'ログイン失敗'
      render :new
    end
  end

  def destroy
    session[:login_uid] = nil
    flash[:success] = 'ログアウト成功'
    redirect_to root_path
  end
end