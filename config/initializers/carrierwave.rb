require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'
if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws' 
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AKIA5IN3I4CPNB3SZKXY'],
      aws_secret_access_key: ENV['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'],
      region: ENV['ap-northeast-1']
    }

    config.fog_directory  = ENV['okuhakurai']
    config.asset_host = "https://s3.ap-northeast-1.amazonaws.com/okuhakurai"
    config.cache_storage = :fog
  end
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
end