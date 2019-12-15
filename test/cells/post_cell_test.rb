class PostCellTest < ActionView::TestCase
  test 'retornar el string del author para el meta' do
    post = Post.new author: 'Jury'
    post_cell = PostCell.new(post)

    assert_equal 'por Jury', post_cell.author_meta
  end

  test 'retornar la fecha en formato legible' do
    post = Post.new published_at: Time.new(2019, 12, 13)
    post_cell = PostCell.new(post)

    assert_equal 'el 13 de December del 2019', post_cell.date_meta
  end

  test 'retornar el color correspondiente para muchos likes' do
    post = Post.new likes: 55
    post_cell = PostCell.new(post)

    assert_equal 'primary', post_cell.likes_badge_color
  end
end