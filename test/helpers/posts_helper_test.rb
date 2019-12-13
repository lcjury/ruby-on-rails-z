class PostsHelperTest < ActionView::TestCase
  test 'debe retornar verdadero solo para el último post' do
    posts = [Post.new(title: 'hola mundo'), Post.new(title: 'ultimo post')]

    assert_not last_post?(posts, 0)
    assert last_post?(posts, 1)
  end

  test 'retornar el string del author para el meta' do
    post = Post.new author: 'Jury'

    assert_equal 'por Jury', author_meta(post)
  end

  test 'retornar la fecha en formato legible' do
    post = Post.new published_at: Time.new(2019, 12, 13)

    assert_equal 'el 13 de December del 2019', date_meta(post)
  end

  test 'retornar el color correspondiente para muchos likes' do
    post = Post.new likes: 55

    assert_equal 'primary', likes_badge_color(post)
  end
end
