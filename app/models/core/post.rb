class Core::Post < ApplicationRecord
  validates :name, :title, :content, presence: true
end
