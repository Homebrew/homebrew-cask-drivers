cask 'yubico-authenticator' do
  version '4.2.0'
  sha256 'de60bc4de3f3f4f602c242151a31cf0143ed63e6ac84b09568c080f690c4e57a'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html',
          checkpoint: '248605a9112294cb7d6b2a8e16916cd05c1bc59457fd12016968ca2236c08f3c'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticator'
end
