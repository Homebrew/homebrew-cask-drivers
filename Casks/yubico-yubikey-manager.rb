cask 'yubico-yubikey-manager' do
  version '1.1.0'
  sha256 '0b27bda2df1d4025bb7aee074db205c0da28fcf5dd8050d9cd5b16faeeb16894'

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-manager-qt/Release_Notes.html'
  name 'Yubikey Manager'
  homepage 'https://developers.yubico.com/yubikey-manager-qt/'

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.ykman'
end
