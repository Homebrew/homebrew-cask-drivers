cask 'yubico-yubikey-manager' do
  version '0.4.0'
  sha256 'f8cfac5d9d00f1f003377ddfe41bbc251e22def148c5fd92a3163cbef63b3486'

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-manager-qt/Release_Notes.html',
          checkpoint: 'c9948fc0081554f24afddc0bfec81d288b83242b2554f61a06aa8f9c4880395e'
  name 'Yubikey Manager'
  homepage 'https://developers.yubico.com/yubikey-manager-qt/'

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.ykman'
end
