class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  # GET /categories or /categories.json
  def index
    @categories = Category.all
    @articles = Article.all.newest_first
    @top = Vote.most_popular.includes(:article).first # .includes(:article)
    @topcover = Article.where(category_id: 1).newest_first.first
    @topnews = Article.where(category_id: 2).newest_first.first
    @topinterviews = Article.where(category_id: 3).newest_first.first
    @toplive = Article.where(category_id: 4).newest_first.first
    @topreview = Article.where(category_id: 5).newest_first.first
  end

  # GET /categories/1 or /categories/1.json
  def show
    @category = Category.find(params[:id])    
    @selection = Article.where(category_id: @category.id).includes([:user]).newest_first.limit(4)

    # @cover = Article.where(category_id: 1).newest_first.limit(4)
    # @news = Article.where(category_id: 2).newest_first.limit(4)
    # @interviews = Article.where(category_id: 3).newest_first.limit(4)
    # @live = Article.where(category_id: 4).newest_first.limit(4)
    # @review = Article.where(category_id: 5).newest_first.limit(4)
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit; end

  # POST /categories or /categories.json
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

  # PATCH/PUT /categories/1 or /categories/1.json
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

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name, :priority)
  end
end
