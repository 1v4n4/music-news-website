module ApplicationHelper

  def log
    if current_user 
      'layouts/h1'
    else 
      'layouts/h2'
    end
  end

  
end
