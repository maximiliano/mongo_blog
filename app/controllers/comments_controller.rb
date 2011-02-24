class CommentsController < ApplicationController
  def create
    @article = Article.where(:_id => params[:article_id]).first
    @comment = @article.comments.create(params[:comment])
    redirect_to @article, :notice => "Comment created!"

=begin
    @article = Article.find(params[:article_id])  
    @comment = @article.comments.create!(params[:comment]) 
    redirect_to @article, :notice => "Comment created!"    
=end

  end
end
