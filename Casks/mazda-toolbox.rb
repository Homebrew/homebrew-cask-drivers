cask 'mazda-toolbox' do
  version '.2002137187,2019_11_05__11_39_00'
  sha256 '264b6b02f8fb92502256b0a9e943c67e29f4945e6f9bcebfaa7ea9f11fb3be38'

  # azure.distrib.naviextras.com/content/!application was verified as official when first introduced to the cask
  url "https://azure.distrib.naviextras.com/content/!application/TOOLBOX/Agents/Mazda/OSX/#{version.after_comma}/Mazda-Toolbox.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.naviextras.com/to/MazdaToolboxOSX',
          configuration: version.after_comma
  name 'Mazda Toolbox'
  homepage 'https://infotainment.mazdahandsfree.com/navigation-updatemymaps'

  depends_on macos: '>= :yosemite'

  app 'Mazda Toolbox.app'

  uninstall signal: [
                      ['KILL', 'com.mazda.toolbox'],
                    ]

  zap trash: [
               '~/Library/Application Support/Mazda Toolbox',
               '~/Library/Caches/Mazda Toolbox',
               '~/Library/Caches/com.mazda.toolbox',
               '~/Library/Cookies/com.mazda.toolbox.binarycookies',
               '~/Library/Logs/Mazda Toolbox',
               '~/Library/Preferences/com.mazda.toolbox.plist',
               '~/Library/Saved Application State/com.mazda.toolbox.savedState',
             ]
end
