cask 'yubico-yubikey-manager' do
  version '0.5.1'
  sha256 '18c609748b1cf5a3246c4931c840fb6f77804c147c44dc64a5ff15a231ad0126'

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-manager-qt/Release_Notes.html',
          checkpoint: '16f70fbf3b92f33ec6972f5938cb2fd15612a8280fc4a73ff59b4a45d8c9624f'
  name 'Yubikey Manager'
  homepage 'https://developers.yubico.com/yubikey-manager-qt/'

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.ykman'
end
