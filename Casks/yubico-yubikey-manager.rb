cask 'yubico-yubikey-manager' do
  version '0.5.1'
  sha256 '18c609748b1cf5a3246c4931c840fb6f77804c147c44dc64a5ff15a231ad0126'

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-manager-qt/Release_Notes.html'
  name 'Yubikey Manager'
  homepage 'https://developers.yubico.com/yubikey-manager-qt/'

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.ykman'
end
