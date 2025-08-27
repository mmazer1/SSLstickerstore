class CardUpload
  include ActiveModel::Model
  attr_accessor :image

  def initialize(image:)
    @image = image
  end

  def self.process(image)
    Cloudinary::Uploader.upload(image.path)
  end
end