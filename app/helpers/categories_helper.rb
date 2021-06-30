module CategoriesHelper

  def category_selection(selection, category)
    selection.each_with_index do |select, index|
      if index == 0 || index == 1
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
    article.title[0...50]
  end

  def indexes(index, select)
   if index == 0 || index == 1
    render 'categories/show1', :select => select
  else
    render 'categories/show2', :select => select
  end
end



end
