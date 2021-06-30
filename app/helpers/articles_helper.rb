module ArticlesHelper
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
    if article.author == current_user
      render 'articles/editdelete', :article => article
    end
  end

  def ed_links_show(article)
    if article.author == current_user
      render 'articles/edlinksforshow', :article => article
    end
  end

end
