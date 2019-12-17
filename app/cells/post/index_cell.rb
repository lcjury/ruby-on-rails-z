class Post::IndexCell < Cell::ViewModel
    include Layout::External
    include ::Cell::Erb

    def last_post?(index)
        model.size - 1 == index
    end
end