cask 'geniatech-eyetv' do
  version '3.6.9,7524'
  sha256 '202e3c413c6acb08c6fb706af86e2c03f00a346f0ccb682cc596c589bbc0e057'

  # file.geniatech.com/eyetv3 was verified as official when first introduced to the cask
  url "http://file.geniatech.com/eyetv3/Geniatech_eyetv_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://updates.geniatech.eu/autoupdate/eyetv#{version.major}.rss?o=010014003"
  name 'EyeTV'
  homepage "https://www.geniatech.eu/product/eyetv-#{version.major}/"

  app 'EyeTV.app'
end
