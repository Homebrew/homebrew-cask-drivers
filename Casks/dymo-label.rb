cask 'dymo-label' do
  version '8.7.3'
  sha256 '4a66168edfe253dae1e129fee48853d9e0e910416c61d746f1c0d42dddb838f0'

  url "http://download.dymo.com/dymo/Software/Mac/DLS#{version.major}Setup.#{version}.dmg"
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
