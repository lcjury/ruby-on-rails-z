require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test 'debe mostrar todos los posts' do
    get '/posts'

    assert_select '.post-title', 'hola mundo'
  end
end
