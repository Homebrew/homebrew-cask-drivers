cask '3dconnexion' do
  version 'r2688'
  sha256 '9620ef4895d0ed118bf950566c72bae421cc84de55bb2f301868e5654beee999'

  url "https://www.3dconnexion.com/index.php?eID=sdl&ext=tx_iccsoftware&oid=dd910822-3bf1-5ce9-8145-59d4caa82238&filename=3DxWareMac_v10-5-0_#{version}.dmg"
  name '3Dconnexion'
  homepage 'https://www.3dconnexion.com/service/drivers.html'

  pkg 'Install 3Dconnexion software.pkg'

  uninstall pkgutil: 'com.3dconnexion.*'
end
