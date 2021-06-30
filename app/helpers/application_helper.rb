module ApplicationHelper

  def log
    if current_user 
      'layouts/h1'
    else 
      'layouts/h2'
    end
  end

  def alertss(alert)
    if alert
    render 'layouts/alerts'
    end
  end

  def noticess(notice)
    if notice 
      render 'layouts/notices'
    end
  end
end
