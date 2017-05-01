cask 'yubikey-neo-manager' do
  version '1.4.0'
  sha256 'b1af0f922bb8b6da285bf34bc012f48773c2529b4e128fe9a48f4ef768f70bd4'

  url "https://developers.yubico.com/yubikey-neo-manager/Releases/yubikey-neo-manager-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-neo-manager/Release_Notes.html',
          checkpoint: '06eeedfc78e0345ecf6486cbb42808f88ffc6fb31196c7f9946f38962ea8edc1'
  name 'YubiKey NEO Manager'
  homepage 'https://developers.yubico.com/yubikey-neo-manager/'

  pkg "yubikey-neo-manager-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubiKeyNEOManager'
end
