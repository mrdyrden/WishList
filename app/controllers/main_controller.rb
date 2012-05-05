class MainController < ApplicationController


  def homepage
    @wish = Wish.new
  end


end
