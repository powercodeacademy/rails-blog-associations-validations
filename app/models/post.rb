class Post < ApplicationRecord
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  belongs_to :user, optional: true

  validates :name, presence: true
  validates :content, presence: true

  accepts_nested_attributes_for :tags
end
