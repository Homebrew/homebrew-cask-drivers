cask 'steelseries-engine' do
  version '3.12.6'
  sha256 '8e2b3793559e932d957dda41e6d9b0972fd024b099603e0ef1d7fb37747c07bc'

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
