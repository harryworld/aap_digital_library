class Issue < ApplicationRecord
  mount_uploader :cover_image, CoverImageUploader
end
