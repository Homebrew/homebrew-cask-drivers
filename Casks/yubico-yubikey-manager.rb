cask 'yubico-yubikey-manager' do
  version '1.1.4'
  sha256 'f7ac99847c636f5cc250cd36dfc9b25b8fff73ebbf113a084a95f6e5feba3640'

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast 'https://github.com/Yubico/yubikey-manager-qt/releases.atom'
  name 'Yubikey Manager'
  homepage 'https://developers.yubico.com/yubikey-manager-qt/'

  depends_on macos: '>= :sierra'

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall quit:    'com.yubico.ykman',
            pkgutil: 'com.yubico.ykman'

  zap trash: [
               '~/Library/Caches/Yubico/YubiKey Manager',
               '~/Library/Preferences/com.org-yubico.YubiKey Manager.plist',
               '~/Library/Saved Application State/com.yubico.ykman.savedState',
             ],
      rmdir: '~/Library/Caches/Yubico'
end
