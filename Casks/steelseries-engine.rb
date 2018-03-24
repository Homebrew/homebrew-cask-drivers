cask 'steelseries-engine' do
  version '3.12.1'
  sha256 'd6994d51f14bab8f9b73664d720a4f700a6dfd32c353015d6a0ea8b4d7fde9ae'

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
end
