cask '3dconnexion' do
  version '10-6-0_r2876,dac9287b-1f2a-859f-1428-5bd9fb06fe4a'
  sha256 '8060b6fbad9a3f1fe4e3c693e708f875c5cce3159948423ce414bda56434c9b3'

  url "https://www.3dconnexion.com/index.php?eID=sdl&ext=tx_iccsoftware&oid=#{version.after_comma}&filename=3DxWareMac_v#{version}.dmg"
  name '3Dconnexion'
  homepage 'https://www.3dconnexion.com/service/drivers.html'

  pkg 'Install 3Dconnexion software.pkg'

  uninstall pkgutil: 'com.3dconnexion.*'
end
