class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(title)
    post = Post.new(title)
    self.posts << post
  end
end
