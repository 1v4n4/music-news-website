module CategoriesHelper
  def category_selection(selection, _category)
    selection.each_with_index do |_select, index|
      if [0, 1].include?(index)
        'categories/show1'
      else
        'categories/show2'
      end
    end
  end

  def text_preview(article)
    article.text[0...150]
  end

  def title_preview(article)
    article.title[0...40]
  end

  def indexes(index, select)
    if [0, 1].include?(index)
      render 'categories/show1', select: select
    else
      render 'categories/show2', select: select
    end
  end
end
