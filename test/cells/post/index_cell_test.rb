class Post::IndexCellTest < ActionView::TestCase
    test 'debe retornar verdadero solo para el último post' do
        posts = [Post.new(title: 'hola mundo'), Post.new(title: 'ultimo post')]
    
        post_cell = Post::IndexCell.new(posts)

        assert_not post_cell.last_post?(0)
        assert post_cell.last_post?(1)
    end
end