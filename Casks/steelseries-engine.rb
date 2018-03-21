cask 'steelseries-engine' do
  version '3.12.0'
  sha256 'efdb3c7427e12789f1bd084a0673ace3071e1a87485ea76c073557fccd439994'

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
