class Hdfc::Post < Core::Post
  validates :name, :title, :location, :content, presence: true
end
