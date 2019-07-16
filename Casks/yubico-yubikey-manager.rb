cask 'yubico-yubikey-manager' do
  version '1.1.2b'
  sha256 'e4ddcba8585197902145039681aa746f96c01d02540455a069069c527a439f76'

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
