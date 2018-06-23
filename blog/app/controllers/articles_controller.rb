class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

	def new
	end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    #render plain: params[:article].inspect

      if @article.valid?
        @article.save
        redirect_to @article
      else
        render action: 'new'
      end
  end

  private
  
        def article_params
          params.require(:article).permit(:title, :atext)
        end

end
