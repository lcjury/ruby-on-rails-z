class PostsHelperTest < ActionView::TestCase
  test 'debe retornar verdadero solo para el último post' do
    posts = [Post.new(title: 'hola mundo'), Post.new(title: 'ultimo post')]

    assert_not last_post?(posts, 0)
    assert last_post?(posts, 1)
  end
end
