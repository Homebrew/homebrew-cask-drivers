cask 'yubico-yubikey-piv-manager' do
  version '1.4.2f'
  sha256 'b167425753dcac2c981e5e0da121c30c9a485600ab2c588c40eaec4456a4a846'

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-piv-manager/Release_Notes.html'
  name 'YubiKey PIV Manager'
  homepage 'https://developers.yubico.com/yubikey-piv-manager/'

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall signal:  ['TERM', 'YubiKey PIV Manager'],
            pkgutil: 'com.yubico.pkg.YubiKeyPIVManager'

  zap trash: '~/Library/Saved Application State/YubiKey PIV Manager.savedState'
end
