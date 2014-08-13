class LogoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :fog

  version :thumb do
    process :resize_to_fit => [310, 232]
  end
end
