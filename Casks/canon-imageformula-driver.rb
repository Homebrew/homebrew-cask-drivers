cask 'canon-imageformula-driver' do
  version '1.6.18.1009'
  sha256 'c4bd8d730bc0066f47e9a5651a0051c5d8402e438f1899d2c7152376ad61ed05'

  # gdlp01.c-wss.com/gds/1/0100009941/02 was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/1/0100009941/02/P-215IIDriverV.#{version}forMac.dmg"
  name 'Canon ImageFormula Twain Driver'
  homepage 'https://www.canon.se/support/consumer_products/products/scanners/others/imageformula_p-215ii.html?type=drivers'

  depends_on macos: [
                      :sierra,
                      :high_sierra,
                      :mojave,
                    ]

  pkg 'P215II Installer.pkg'

  uninstall quit:    [
                       'com.canonElectronics.Installer.scanserver.pkg',
                       'com.canonElectronics.scanserver',
                     ],
            pkgutil: [
                       'com.canonElectronics.Installer.P215II Driver.pkg',
                       'com.canonElectronics.Installer.scanserver.pkg',
                     ]
end
