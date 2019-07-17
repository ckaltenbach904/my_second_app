class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(params[:comment].permit(:body))
    @comment.user_id = current_user.id if current_user
    if @comment.save
      redirect_to article_path(@article), notice: "Your comment has been saved!"
    else
      redirect_to "new"
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])

    if @comment.update(params[:comment].permit(:body))
      redirect_to article_path(@article), notice: "Your comment has been updated!"
    else
      redirect_to "edit"
    end
  end

  # GET /comments/1/edit
  def edit
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), notice: "Your comment has been deleted."
  end
end
