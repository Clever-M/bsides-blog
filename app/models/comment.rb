class Comment < ApplicationRecord
  belongs_to :blog_post

  validates :subject, presence: true, allow_blank: false
  validates :body, presence: true, allow_blank: false
end
