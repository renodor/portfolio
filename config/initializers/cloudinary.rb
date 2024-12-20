# frozen_string_literal:true

Cloudinary.config do |config|
  config.cloud_name = Rails.application.credentials.cloudinary_cloud_name
  config.api_key = Rails.application.credentials.cloudinary_api_key
  config.api_secret = Rails.application.credentials.cloudinary_api_secret
end
