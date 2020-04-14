cask 'yubico-authenticator' do
  version '5.0.3'
  sha256 '594671279d05faee8c1ff10de4a465247cd6e1e5a28169c169fe69b965d4d4ac'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  depends_on macos: '>= :sierra'

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
