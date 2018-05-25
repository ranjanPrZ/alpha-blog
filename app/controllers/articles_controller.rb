class ArticlesController < ApplicationController

	def new
		@article = Article.new

	end

	def create
		#render plain: params[:article].inspect
		@article =Article.new(article_params)
		if @article.save
			redirect_to @article
		else
			render "new"
		end
	end

	def show
	  @article = Article.all

	end


	private
	  def article_params
	  	params.require(:article).permit(:title,:description)

	  end
end