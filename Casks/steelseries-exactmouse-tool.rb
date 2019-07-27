cask 'steelseries-exactmouse-tool' do
  version :latest
  sha256 :no_check

  # steelseriescdn.com was verified as official when first introduced to the cask
  url 'https://downloads.steelseriescdn.com/drivers/tools/steelseries-exactmouse-tool.dmg'
  name 'SteelSeries ExactMouse Tool'
  homepage 'https://steelseries.com/downloads'

  app 'SteelSeries ExactMouse Tool.app'

  uninstall quit:       'com.SteelSeries.SteelSeries-ExactMouse-Tool',
            login_item: 'SteelSeries ExactMouse Tool'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/com.SteelSeries.SteelSeries-ExactMouse-Tool.help',
               '~/Library/Preferences/com.SteelSeries.SteelSeries-ExactMouse-Tool.plist',
             ]
end
