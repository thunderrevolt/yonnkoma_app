class Board < ApplicationRecord
  mount_uploader :images, YonkomaUploader
  # serialize :images, JSON
  belongs_to :post, optional: true
end
