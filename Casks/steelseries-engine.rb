cask 'steelseries-engine' do
  version '3.12.5'
  sha256 'c499ef623141bd8a4a7234ee72bb72992b8aa0e1ec36bfce4bddb250b7cfb118'

  # steelseriescdn.com was verified as official when first introduced to the cask
  url "https://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg"
  name "SteelSeries Engine #{version.major}"
  homepage 'https://steelseries.com/engine'

  pkg "SteelSeriesEngine#{version}.pkg"

  uninstall pkgutil:   [
                         'com.steelseries.installer.driver',
                         'com.steelseries.SSENext',
                         'com.steelseries.ssenext.driver',
                         'com.steelseries.ssenext.driver.signed',
                         'com.steelseries.ssenext.uninstaller',
                       ],
            kext:      'com.steelseries.ssenext.driver',
            launchctl: 'com.steelseries.SSENext',
            quit:      "com.steelseries.SteelSeries-Engine-#{version.major}"

  zap trash: [
               '/Library/Application Support/SteelSeries Engine 3',
               '~/Library/Application Support/steelseries-engine-3-client',
               '~/Library/Caches/com.steelseries.SteelSeries-Engine-3',
               '~/Library/Preferences/com.steelseries.SteelSeries-Engine-3.plist',
               '~/Library/Preferences/com.steelseries.ssenext.client.helper.plist',
               '~/Library/Preferences/com.steelseries.ssenext.client.plist',
             ]
end
