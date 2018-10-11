cask 'yubico-yubikey-manager' do
  version '1.0.1'
  sha256 '66105d215899fbb47e423e5729ae677c6bb64e6ecf68ce912941b3edf3fd1269'

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-manager-qt/Release_Notes.html'
  name 'Yubikey Manager'
  homepage 'https://developers.yubico.com/yubikey-manager-qt/'

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.ykman'
end
