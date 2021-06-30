module ApplicationHelper
  def log
    if current_user
      'layouts/h1'
    else
      'layouts/h2'
    end
  end

  def alertss(alert)
    render 'layouts/alerts' if alert
  end

  def noticess(notice)
    render 'layouts/notices' if notice
  end
end
