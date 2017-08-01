class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show
    @n = News.find(params[:id])
  end

  private

  def news_params
    params.require(:news).permit(:title, :body)
  end
end
