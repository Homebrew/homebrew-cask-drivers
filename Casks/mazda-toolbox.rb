cask 'mazda-toolbox' do
  version '4.4.2002117008,2019_01_18__13_52_00'
  sha256 '9da346fa10eb7ee9c4fd73181dc09339a22fb08b0a27e2192f35d1d246c6d3e3'

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
