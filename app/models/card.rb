class Card < ActiveRecord::Base

  belongs_to :lesson	
  mount_uploader :image, ImageUploader

end
