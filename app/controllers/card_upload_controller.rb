class CardUploadController < ApplicationController
  helper ActionView::Helpers::DateHelper

  def form
    # @recent_uploads = CardUpload.order(created_at: :desc).limit(5)
  end

  def create
    uploaded_file = params[:image]
    name = params[:name]
    rarity = params[:rarity]
    if uploaded_file && name.present? && rarity.present?
      card_upload = CardUpload.new(uuid: SecureRandom.uuid, name: name, rarity: rarity, image: uploaded_file)
      card_upload.save!
      flash[:notice] = "Upload successful!"
    else
      flash[:alert] = "Please complete all fields."
    end
    redirect_to card_upload_path
  end
end
