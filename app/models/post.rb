class Post < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :boards, dependent: :destroy
  accepts_nested_attributes_for :boards, allow_destroy: true
end
