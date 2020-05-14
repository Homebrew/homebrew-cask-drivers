cask 'yubico-authenticator' do
  version '5.0.4'
  sha256 'c23eebe33db4aab2ae34b3110a4df102c06ef8c7931a8f506c6d9ea5ffb95c52'

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
