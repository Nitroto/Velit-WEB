class HomeController < ApplicationController
  def index
    flash[:notice] = t(:hello)
  end
end
