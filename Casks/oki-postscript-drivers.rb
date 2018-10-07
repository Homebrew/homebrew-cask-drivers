cask 'oki-postscript-drivers' do
  version '2.0.2'
  sha256 'b8d5058744d93d040433eb841dcd2481848e61b659e84da459785310044857fa'

  url 'https://www.oki.com/printing/download/OKI_MXMLion_DPS_eu_A1_3_35555.dmg'
  name 'OKI MC860 PS Driver for OSX'
  homepage 'https://www.oki.com/ge/printing/support/drivers-and-utilities/?id=46251801FZ01&tab=drivers-and-utilities&productCategory=colour-multifunction&sku=43967004&lang=ac2'

  pkg 'OKI PostScript Driver.pkg'

  uninstall pkgutil: 'com.okidata.okiPostscriptDriver.OELnew.*'
end
