cask 'yubico-authenticator' do
  version '4.3.2'
  sha256 'eed093a95da0bdd798339bf77b7266b6185b7bd6837c87174a415336046b4144'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html',
          checkpoint: '1cc4f3e82dd97f98cd2378b99b3f01ba88cf100ca2b267abddd8309594c5215b'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.yubioath'
end
