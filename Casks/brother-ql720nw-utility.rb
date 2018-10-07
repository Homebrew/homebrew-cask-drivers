cask 'brother-ql720nw-utility' do
  version '3.0.0'
  sha256 '7a4dc1b0bc84c1eb32c0f97907d49051863a5fd4a06da064b881545264253984'

  url "https://download.brother.com/welcome/dlfp100401/pst720m#{version.no_dots}x12all.dmg"
  name 'Brother QL-720NW Printer Setting Tool'
  homepage 'https://support.brother.com/g/b/producttop.aspx?c=us_ot&lang=en&prod=lpql720nweus'

  pkg 'BrotherQL720NWUtility.pkg'

  uninstall pkgutil: 'com.brother.brotherptdriver.BrotherQL720NWUtility.pkg'
end
