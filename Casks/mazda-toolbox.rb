cask 'mazda-toolbox' do
  version '2017_05_16__14_25_TB4'
  sha256 'bbaa78c28c8622a9e44c955567aa941ff77a01948364e68c2ce8179ace6f2747'

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
