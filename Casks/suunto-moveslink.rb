cask 'suunto-moveslink' do
  version '1.0.66'
  sha256 '5897fe23239a4400f9f23929f2eadcc424bdc5f3f3b3da74a1c17b8ec778997c'

  url "https://content.static.movescount.com/downloads/Moveslink_setup_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.movescount.com/connect/moveslink?os=mac'
  name 'Suunto Moveslink'
  homepage 'https://www.movescount.com/connect/moveslink?os=mac'

  pkg 'Moveslink_setup.pkg'

  uninstall quit:       'com.yourcompany.Moveslink',
            login_item: 'Moveslink',
            pkgutil:    'com.suunto.moveslink.moveslink.pkg'

  zap trash: [
               '~/Library/Application Support/Suunto/Moveslink',
               '~/Library/Saved Application State/com.yourcompany.Moveslink.savedState',
             ],
      rmdir: '~/Library/Application Support/Suunto'
end
