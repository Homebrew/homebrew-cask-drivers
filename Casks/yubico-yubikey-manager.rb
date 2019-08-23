cask 'yubico-yubikey-manager' do
  version '1.1.3'
  sha256 '3bf989eecd217c698c96c8f3554f3a7210d5720812541b4d1cbc6128f4fbd41a'

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
