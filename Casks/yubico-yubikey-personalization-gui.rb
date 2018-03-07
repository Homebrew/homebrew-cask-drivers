cask 'yubico-yubikey-personalization-gui' do
  version '3.1.25'
  sha256 '45b270edd68c03e6470fe1bcb8dee79dad37c454b1e679838233041feb7ad23d'

  url "https://developers.yubico.com/yubikey-personalization-gui/Releases/yubikey-personalization-gui-#{version}.pkg"
  appcast 'https://developers.yubico.com/yubikey-personalization-gui/Releases/',
          checkpoint: '44859fd6251b6d8b3db7eeacfcb5781d60b8fb12a17e3f4037fe3390d33dfb68'
  name 'YubiKey Personalization GUI'
  homepage 'https://www.yubico.com/products/services-software/personalization-tools/use/'

  pkg "yubikey-personalization-gui-#{version}.pkg"

  uninstall pkgutil: 'com.yubico.YKPersonalization'
end
