class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show
    @n = News.find(params[:id])
  end
end
