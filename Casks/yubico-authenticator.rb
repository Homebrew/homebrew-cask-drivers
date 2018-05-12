cask 'yubico-authenticator' do
  version '4.3.4'
  sha256 '096d2cd39e270eb709ea690b4578517312f9cc31ae7502da2fdba9b903e7f872'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html',
          checkpoint: '9fa7024000e9c80486a9dcdff52aa0c4591ddc820422d2ce58bc5972d37c7221'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.yubioath'
end
