cask 'yubico-yubikey-manager' do
  version '1.1.1'
  sha256 '40e11dfe770f0bf6e3abc2ef7556463f5c6613eb11113c2a180c7ca66fd60583'

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-manager-qt/Release_Notes.html'
  name 'Yubikey Manager'
  homepage 'https://developers.yubico.com/yubikey-manager-qt/'

  depends_on macos: '>= :sierra'

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.ykman'
end
