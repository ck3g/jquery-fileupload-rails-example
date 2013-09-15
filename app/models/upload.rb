class Upload < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
