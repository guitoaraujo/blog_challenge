module Posts
  class Index

    def initialize(search, page)
      @search = search
      @page   = page
    end

    def call
      if @search.blank?
        @posts = Post.all
      else
        @posts = Post.where("title ILIKE ?", "%#{@search}%")
      end
      @posts.order(created_at: :desc).page @page
    end
  end
end


