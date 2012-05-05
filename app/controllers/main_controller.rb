class MainController < ApplicationController


  def homepage
    @user = User.new
  end

  def login
    render :json => { :success => true , :message => "HELLO" }
  end

end
