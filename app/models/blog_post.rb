class BlogPost < ApplicationRecord
  has_many :comments

  validates :title, presence: true, allow_blank: false
  validates :body, presence: true, allow_blank: false
end
