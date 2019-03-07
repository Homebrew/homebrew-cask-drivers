cask 'steelseries-engine' do
  version '3.13.8'
  sha256 '07c90963066f12bc533019ed832fed97b986f55b4b946ffc6758ca0dd347d22e'

  # steelseriescdn.com was verified as official when first introduced to the cask
  url "https://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg"
  name "SteelSeries Engine #{version.major}"
  homepage 'https://steelseries.com/engine'

  pkg "SteelSeriesEngine#{version}.pkg"

  uninstall pkgutil:   'com.steelseries.*',
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
