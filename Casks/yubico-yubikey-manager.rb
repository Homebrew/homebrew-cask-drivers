cask 'yubico-yubikey-manager' do
  version '0.5.2'
  sha256 '33b0e76d3deb00224805b500b8035eb0529f230f393a3231067eb0a0f7afc82f'

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-manager-qt/Release_Notes.html'
  name 'Yubikey Manager'
  homepage 'https://developers.yubico.com/yubikey-manager-qt/'

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.ykman'
end
