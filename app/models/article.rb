class Article < ApplicationRecord
    mount_uploader :image, CoverUploader
end
