require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test 'debe mostrar todos los posts' do
    Post.create title: 'hola mundo', content: ''

    get '/posts'

    assert_select '.post-title', 'hola mundo'
  end
end
