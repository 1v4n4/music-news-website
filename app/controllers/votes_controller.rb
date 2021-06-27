class VotesController < ApplicationController
  before_action :set_vote, only: %i[show edit update destroy]
  before_action :authorize

  def index
    @votes = Vote.all
  end

  def show; end

  def new
    @vote = Vote.new
  end

  def edit; end

  def create
    @article = Article.find(params[:article_id])
    if Vote.where(article_id: @article.id, user_id: current_user.id).exists?
      redirect_to articles_path, notice: 'User is allowed to vote once. You already voted for this article'
      return
    end
    @vote = current_user.votes.new(article_id: @article.id)

    respond_to do |format|
      if @vote.save
        format.html { redirect_to @article, notice: 'Your vote is recorded!' }
        format.json { render :show, status: :created, location: @vote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @vote.update(vote_params)
        format.html { redirect_to @vote, notice: 'Vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to votes_url, notice: 'Vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_vote
    @vote = Vote.find(params[:id])
  end

  def vote_params
    params.fetch(:vote, {})
  end
end
