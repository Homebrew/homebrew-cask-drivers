cask 'yubico-authenticator' do
  version '4.1.4'
  sha256 '3809983c05ac9dd2ce096d56660764c59a75ca1eaa876e3a8fa0e432c004c5b9'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html',
          checkpoint: '3db0d9b5dd1c45fd7e37f9306e1dbd6e2e6f3e8f48527940a31efdc4fda5285a'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticator'
end
