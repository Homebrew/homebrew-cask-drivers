cask 'yubico-yubikey-piv-manager' do
  version '1.4.2'
  sha256 'a8bb9b8dcd11616a607ab6f5cb7de55f00c4e17e4cbab725884f34d952944c99'

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-piv-manager/Release_Notes.html',
          checkpoint: '5583b200fe61e5c6871953416523b186fb8a62eccf93982631a99e3f91a36686'
  name 'YubiKey PIV Manager'
  homepage 'https://developers.yubico.com/yubikey-piv-manager/'

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubiKeyPIVManager'
end
