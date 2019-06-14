cask 'yubico-authenticator' do
  version '4.3.6b'
  sha256 '4fff8785ab9422249c5514950cc0b6cdb32975fc3aafef3f6cba6eaeb5c9082d'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall signal:  ['TERM', 'com.yubico.yubioath'],
            pkgutil: 'com.yubico.yubioath'

  zap trash: [
               '~/Library/Caches/Yubico/Yubico Authenticator',
               '~/Library/Preferences/com.com-yubico.Yubico Authenticator.plist',
               '~/Library/Saved Application State/com.yubico.yubioath.savedState',
             ],
      rmdir: '~/Library/Caches/Yubico'
end
