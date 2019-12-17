class PostsController < ApplicationController
    def index
        posts = Post.order(published_at: :desc)

        html_content = cell('post/index', posts, layout: LayoutCell)
        render html: html_content, layout: false
    end
end
