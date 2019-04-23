cask 'steelseries-engine' do
  version '3.14.1'
  sha256 '3af9d07952327ac586f8b571c8b059e32764fbc2e6e69bb324a6bb04dc7949e9'

  # steelseriescdn.com was verified as official when first introduced to the cask
  url "https://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg"
  appcast 'https://steelseries.com/engine'
  name "SteelSeries Engine #{version.major}"
  homepage 'https://steelseries.com/engine'

  auto_updates
  depends_on macos: '>= :yosemite'

  pkg "SteelSeriesEngine#{version}.pkg"

  uninstall launchctl: 'com.steelseries.SSENext',
            quit:      [
                         "com.steelseries.SteelSeries-Engine-#{version.major}",
                         'com.steelseries.ssenext.client.*',
                         'com.steelseries.ssenext.uninstaller',
                       ],
            kext:      'com.steelseries.ssenext.driver',
            script:    [
                         executable: "/Applications/SteelSeries Engine #{version.major}/SteelSeries Engine #{version.major} Uninstaller.app/Contents/Resources/Uninstall.sh",
                         sudo:       true,
                       ],
            pkgutil:   'com.steelseries.*',
            delete:    "/Library/Application Support/SteelSeries Engine #{version.major}"

  zap trash: [
               "~/Library/Application Support/steelseries-engine-#{version.major}-client",
               "~/Library/Caches/com.steelseries.SteelSeries-Engine-#{version.major}",
               "~/Library/Logs/SteelSeries Engine #{version.major} Client",
               "~/Library/Preferences/com.steelseries.SteelSeries-Engine-#{version.major}.plist",
               '~/Library/Preferences/com.steelseries.ssenext.client.helper.plist',
               '~/Library/Preferences/com.steelseries.ssenext.client.plist',
               '~/Library/Saved Application State/com.steelseries.ssenext.client.savedState',
             ]
end
