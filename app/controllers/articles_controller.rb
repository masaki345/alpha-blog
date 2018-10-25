class ArticlesController < ApplicationController
  
  def new
    @article = Article.new
  end
  
  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
#    render plain: @article.errors.full_messages.inspect
    redirect_to articles_show(@article)
  end

  
  private
    def article_params
      params.require(:article).permit(:title,:description)
    end

end