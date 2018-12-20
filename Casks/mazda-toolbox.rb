cask 'mazda-toolbox' do
  version '4.4.2002106238,2018_09_18__12_12_00'
  sha256 '77b0fa587bf098de101f0903486c62f7b2c4a5f7e74f59075058b5fed24b8b81'

  url "http://azure.distrib.naviextras.com/content/!application/TOOLBOX/Agents/Mazda/OSX/#{version.after_comma}/Mazda-Toolbox.dmg"
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
