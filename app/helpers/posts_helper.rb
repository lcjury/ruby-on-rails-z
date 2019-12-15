module PostsHelper
  def last_post?(posts, index)
    posts.size - 1 == index
  end
end
