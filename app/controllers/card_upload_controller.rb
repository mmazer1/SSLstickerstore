class CardUploadController < ApplicationController
  def form
  end

  def create
    uploaded_file = params[:image]
    # Handle the uploaded file (e.g., save to disk or attach to a model)
    # Example: save to /tmp
    if uploaded_file
      CardUpload.new(image: uploaded_file)
      CardUpload.process(uploaded_file)
    else
      flash[:alert] = "No file selected."
    end
    redirect_to card_upload_path
  end
end