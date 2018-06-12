cask 'yubico-authenticator' do
  version '4.3.4'
  sha256 '096d2cd39e270eb709ea690b4578517312f9cc31ae7502da2fdba9b903e7f872'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.yubioath'
end
