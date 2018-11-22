cask 'steelseries-engine' do
  version '3.13.3'
  sha256 'dad088ff472908b4caa5e58f68c0a42fcca42abbe58b6aad802990d0e1adc518'

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
