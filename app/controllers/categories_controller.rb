class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  def index
    @articles = Article.all.newest_first
    @top = Vote.most_popular.includes(article: [:category]).limit(1)
    @topcover = Article.where(category_id: 1).newest_first.limit(1)
    @topnews = Article.where(category_id: 2).newest_first.limit(1)
    @topinterviews = Article.where(category_id: 3).newest_first.limit(1)
    @toplive = Article.where(category_id: 4).newest_first.limit(1)
    @topreview = Article.where(category_id: 5).newest_first.limit(1)
  end

  def show
    @category = Category.find(params[:id])
    @selection = Article.where(category_id: @category.id).includes([:author]).newest_first.limit(4)
  end

  def new
    @category = Category.new
  end

  def edit; end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :priority)
  end
end
