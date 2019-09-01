cask 'canon-captureontouch-utility' do
  version '4.4.19.0222'
  sha256 'ba196b001ff61899e3ae01ccc5e1a2878d9cf8444d5088f3ac6bc3d75b517c91'

  # gdlp01.c-wss.com/gds/0/0200005510/03 was verified as official when first introduced to the cask
  url "http://gdlp01.c-wss.com/gds/0/0200005510/03/CaptureOnTouchV.#{version}forMac.dmg"
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
