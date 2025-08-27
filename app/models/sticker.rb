class Sticker < ActiveRecord::Base
  include UuidHelper
  validates :name, presence: true
  validates :image_url, presence: true

  before_create :assign_uuid
end