cask 'geniatech-eyetv' do
  version '3.6.9_7528_20190730'
  sha256 '37db9f7f455f05074bdd20c36b01d73aed55cc48c2f871a17f91cf2580eb8b77'

  # file.geniatech.com/eyetv3 was verified as official when first introduced to the cask
  url "https://file.geniatech.com/eyetv3/EyeTV#{version}.dmg"
  appcast "http://updates.geniatech.eu/autoupdate/eyetv#{version.major}.rss?o=010014003"
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
