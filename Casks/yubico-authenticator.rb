cask 'yubico-authenticator' do
  version '4.1.2'
  sha256 'd9f104a5631b6628b16eb996eaa3b33cdd9560ffc15b0098234b00d281b666c6'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html',
          checkpoint: '089bbd0911df46721f3ddcd8a955729e45583bac92c35a3ab1e55837b4812952'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticator'
end
