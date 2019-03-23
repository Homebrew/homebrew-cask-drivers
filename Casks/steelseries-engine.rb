cask 'steelseries-engine' do
  version '3.13.10'
  sha256 '3d9efa38e298a8198a815e8b68b45cdb2f892c40b9f043023e322a207d5140e9'

  # steelseriescdn.com was verified as official when first introduced to the cask
  url "https://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg"
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
