cask 'geniatech-eyetv' do
  version '3.6.9,7523'
  sha256 '55ce24f545b9b3acb86cdc938d49a7df3e0cebaf2e7615573a10869d228a5985'

  # file.geniatech.com/eyetv3 was verified as official when first introduced to the cask
  url "http://file.geniatech.com/eyetv3/Geniatech_eyetv_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://www.geniatech.eu/support/eyetv-#{version.major}-en/"
  name 'EyeTV'
  homepage "https://www.geniatech.eu/product/eyetv-#{version.major}/"

  app 'EyeTV.app'
end
