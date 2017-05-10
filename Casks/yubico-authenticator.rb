cask 'yubico-authenticator' do
  version '4.1.1'
  sha256 'c16eb87040499da4b3c8dacbd1d710fc057e90185f5181296b06a099a38c42ae'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html',
          checkpoint: '9adba51e62f0d1581a4ddeafc6cfc75e15cea0a6a566f0d2d74d329b8c298735'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticator'
end
