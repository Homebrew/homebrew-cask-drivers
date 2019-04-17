cask 'mazda-toolbox' do
  version '4.4.2002117045,2019_03_13__12_10_00'
  sha256 '0574a88f196c31e80c05d79189fa6a5f0468a419cc7ad59c44a1d94b547d4664'

  url "https://azure.distrib.naviextras.com/content/!application/TOOLBOX/Agents/Mazda/OSX/#{version.after_comma}/Mazda-Toolbox.dmg"
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
