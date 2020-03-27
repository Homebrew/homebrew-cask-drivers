cask 'dymo-label' do
  version '8.7.4'
  sha256 '5d09fe70d39d9211c1c3e9f97379e182255ebf68b36e1c401f18b9671d6994e9'

  url "https://download.dymo.com/dymo/Software/Mac/DLS#{version.major}Setup.#{version}.dmg"
  appcast 'https://www.dymo.com/en-US/online-support'
  name 'Dymo Label'
  homepage 'https://www.dymo.com/en-US/online-support'

  pkg "DYMO Label v.#{version.major}.pkg"

  uninstall launchctl: [
                         'com.dymo.dls.webservice',
                         'com.dymo.pnpd',
                       ],
            pkgutil:   [
                         'com.dymo.cups',
                         'com.dymo.dls.*',
                       ]

  zap trash: [
               '~/Library/Preferences/com.dymo.dls.plist',
               '~/Library/Caches/com.dymo.dls',
             ]
end
