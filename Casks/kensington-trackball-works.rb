cask 'kensington-trackball-works' do
  version '1.4.0'
  sha256 'fc02ccf5926b7bb0195f786a2982796f61b6152284db7164890ead3ceb6e4b6c'

  # accoblobstorageus.blob.core.windows.net was verified as official when first introduced to the cask
  url 'https://accoblobstorageus.blob.core.windows.net/software/b0431d44-7e8d-4785-ba9c-648b7157042d.dmg'
  name 'Kensington TrackballWorks'
  homepage 'https://www.kensington.com/'

  pkg 'Kensington TrackballWorks.pkg'

  uninstall pkgutil:   'com.kensington.trackballworks.driver.installer',
            kext:      'com.kensington.trackballworks.driver',
            launchctl: [
                         'com.kensington.slimblade.agent',
                         'com.kensington.slimblade.guiagent.plist',
                       ],
            quit:      'com.kensington.trackballworks.helper'
end
