cask 'geniatech-eyetv' do
  version '4.0.0 (8520)'
  sha256 '3b6a195672e711f007f5c649b1092849f2e0187899f496d1359380e681ab1810'

  # file.geniatech.com/eyetv was verified as official when first introduced to the cask
  url "http://file.geniatech.com/eyetv#{version.major}/Geniatech_eyetv_#{version.major}.dmg"
  appcast "http://updates.geniatech.eu/autoupdate/eyetv#{version.major}.rss"
  name 'EyeTV'
  homepage "https://www.geniatech.eu/product/eyetv-#{version.major}/"

  app 'EyeTV.app'

  uninstall quit:   'com.elgato.eyetv',
            delete: '/Library/Application Support/EyeTV'

  zap trash: [
               '~/Documents/EyeTV Archive',
               '~/Library/Caches/com.apple.helpd/Generated/com.elgato.eyetv.help',
               '~/Library/Preferences/com.elgato.eyetv.plist',
               '~/Library/Saved Application State/com.elgato.eyetv.savedState',
             ]
end
