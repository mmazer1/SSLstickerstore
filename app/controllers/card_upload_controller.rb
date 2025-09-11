class CardUploadController < ApplicationController
  helper ActionView::Helpers::DateHelper

  def form
    @recent_uploads = CardUpload.order(created_at: :desc).limit(5)
  end

  def create
    uploaded_file = params[:image]
    name = params[:name]
    rarity = params[:rarity]

    if uploaded_file && name.present? && rarity.present?
      filename = "#{SecureRandom.hex}_#{uploaded_file.original_filename}"
      filepath = Rails.root.join('public', 'uploads', filename)
      File.open(filepath, 'wb') { |f| f.write(uploaded_file.read) }
      CardUpload.create(uuid: SecureRandom.uuid, name: name, rarity: rarity, image_url: "/uploads/#{filename}")
      flash[:notice] = "Upload successful!"
    else
      flash[:alert] = "Please complete all fields."
    end
    redirect_to card_upload_path
  end
end