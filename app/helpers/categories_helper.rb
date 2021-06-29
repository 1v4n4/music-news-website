module CategoriesHelper

  def category_selection(category, selection)
    @selection.each_with_index do |select, index|
      if index == 0 || index == 1
        'categories/show1'
      else
        'categories/show2'
      end
    end
  end

end
