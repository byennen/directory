CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIWRY4MY44A266RQA',
    :aws_secret_access_key  => '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'
  }
  config.fog_directory = "trend-uploads-#{Rails.env}"
end
