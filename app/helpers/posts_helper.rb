module PostsHelper
  def last_post?(posts, index)
    posts.size - 1 == index
  end

  def author_meta(post)
    post.author.present? ? "por #{post.author}" : ''
  end

  def date_meta(post)
    post.published_at.strftime('el %d de %B del %Y')
  end

  def deprecated?(post)
    Time.now - 3.week > post.published_at
  end

  def likes_badge_color(post)
    case post.likes
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
end
