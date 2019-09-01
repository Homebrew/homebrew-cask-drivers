cask 'canon-captureontouch-utility' do
  version '4.4.19.0222'
  sha256 'ba196b001ff61899e3ae01ccc5e1a2878d9cf8444d5088f3ac6bc3d75b517c91'

  # gdlp01.c-wss.com/gds/0/0200005510/03 was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/0/0200005510/03/CaptureOnTouchV.#{version}forMac.dmg"
  appcast 'https://www.canon.se/supportproduct/gettabcontent/?type=download&language=&productTcmUri=tcm:87-1204588&productNameSearch=imageFORMULA%20P-215II&supportProductInformation=imageFORMULA%20P-215II%5Enull%5Enull%5Enull%5Enull&referrer=https%3A%252F%252Fwww.canon.se%252Fsupport%252Fconsumer_products%252Fproducts%252Fscanners%252Fothers%252Fimageformula_p-215ii.html&languageSelectedIndex=-1',
          configuration: version.major_minor_patch
  name 'Canon CaptureOnTouch Utility'
  homepage 'https://www.canon.se/support/consumer_products/products/scanners/others/imageformula_p-215ii.html?type=download'

  depends_on macos: [
                      :sierra,
                      :high_sierra,
                      :mojave,
                    ]

  pkg 'CaptureOnTouch Installer.pkg'

  uninstall quit:    'jp.co.canon-elec.TouchV4',
            pkgutil: [
                       'com.canonElectronics.Installer.CaptureOnTouch.pkg',
                       'com.canonElectronics.Installer.AppPlugin.pkg',
                       'com.canonElectronics.Installer.DropboxPlugin.pkg',
                       'com.canonElectronics.Installer.GoogleDrivePlugin.pkg',
                       'com.canonElectronics.Installer.MailPlugin.pkg',
                       'com.canonElectronics.Installer.OneDrivePlugin.pkg',
                       'com.canonElectronics.Installer.PrinterPlugin.pkg',
                       'com.canonElectronics.Installer.SugarSyncPlugin.pkg',
                     ]
end
