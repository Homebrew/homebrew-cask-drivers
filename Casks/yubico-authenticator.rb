cask 'yubico-authenticator' do
  version '4.3.6'
  sha256 'dcd92bb5dbd014cd96225bb6d7088b968697850033189ac977ed581afa95116b'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.yubioath'
end
