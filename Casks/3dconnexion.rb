cask '3dconnexion' do
  version '10-5-3_r2794'
  sha256 '22d03c8465df59afb629a62f24a5b9caef1a8e792902557e632bf386a1d668b6'

  url "https://www.3dconnexion.com/index.php?eID=sdl&ext=tx_iccsoftware&oid=c40d972e-0f4d-67ad-f888-5b3e6b422868&filename=3DxWareMac_v#{version}.dmg"
  name '3Dconnexion'
  homepage 'https://www.3dconnexion.com/service/drivers.html'

  pkg 'Install 3Dconnexion software.pkg'

  uninstall pkgutil: 'com.3dconnexion.*'
end
