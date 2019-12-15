class PostCell < Cell::ViewModel
  include ::Cell::Erb

  property :title, :likes, :content

  def author_meta
    model.author.present? ? "por #{model.author}" : ''
  end

  def date_meta
    model.published_at.strftime('el %d de %B del %Y')
  end

  def deprecated?
    Time.now - 3.week > model.published_at
  end

  def likes_badge_color
    case model.likes
    when 1..10
      'info'
    when 11..20
      'success'
    when 21..5000
      'primary'
    else
      'secondary'
    end
  end

  def last?
    options[:'last?']
  end
end
