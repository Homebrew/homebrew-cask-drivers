cask 'mazda-toolbox' do
  version '2018_08_29__16_48_00'
  sha256 '6ab0c4b951a3fc20b70666a55b56f92779f9143bc43b9f12305e427473f8a7c1'

  url "http://azure.distrib.naviextras.com/content/!application/TOOLBOX/Agents/Mazda/OSX/#{version}/Mazda-Toolbox.dmg"
  name 'Mazda Toolbox'
  homepage 'https://mazda-na.naviextras.com/shop/portal/downloads'

  depends_on macos: '>= :yosemite'

  app 'Mazda Toolbox.app'

  zap trash: [
               '~/Library/Caches/com.mazda.toolbox',
               '~/Library/Caches/Mazda Toolbox',
               '~/Library/Logs/Mazda Toolbox',
               '~/Library/Saved Application State/com.mazda.toolbox.savedState',
               '~/Library/Application Support/Mazda Toolbox',
               '~/Library/Preferences/com.mazda.toolbox.plist',
             ]
end
