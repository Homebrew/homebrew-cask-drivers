cask 'yubico-authenticator' do
  version '4.3.3'
  sha256 'c75474f96058bbb049b35b030e398a472bc34c905aa745176842ec11c35302f7'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html',
          checkpoint: '4e27a0255bf30902e55b5587df8bb8ab89f374b2b56720121985481d3eb29c11'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.yubioath'
end
