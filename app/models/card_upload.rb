class CardUpload
  include ActiveModel::Model
  attr_accessor :image, :name, :rarity, :uuid, :image_url, :created_at

  def initialize(image:, name:, rarity:, uuid:, image_url:, created_at: Time.zone.now)
    @image = image
    @name = name
    @rarity = rarity
    @uuid = uuid
    @image_url = image_url
    @created_at = created_at
  end

  def self.process(image)
    Cloudinary::Uploader.upload(image.path, { folder: "Stickers/Common" })
  end
end
