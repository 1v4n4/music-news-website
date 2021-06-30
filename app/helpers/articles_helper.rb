module ArticlesHelper
  # rubocop: disable Lint/Void
  def title_error
    @article.errors.full_messages_for(:title).each do |msg|
      msg
    end
  end

  def text_error
    @article.errors.full_messages_for(:text).each do |msg|
      msg
    end
  end

  def image_error
    @article.errors.full_messages_for(:image).each do |msg|
      msg
    end
  end

  def ed_links(article)
    render 'articles/editdelete', article: article if article.author == current_user
  end

  def ed_links_show(article)
    render 'articles/edlinksforshow', article: article if article.author == current_user
  end
end
# rubocop: enable Lint/Void
