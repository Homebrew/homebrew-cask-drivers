cask 'yubico-yubikey-piv-manager' do
  version '1.4.2e'
  sha256 '19aa4a9d26cd559c31518255fe26cd322ec1c5e6bc280623a34e198c77c54095'

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-piv-manager/Release_Notes.html'
  name 'YubiKey PIV Manager'
  homepage 'https://developers.yubico.com/yubikey-piv-manager/'

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubiKeyPIVManager'
end
