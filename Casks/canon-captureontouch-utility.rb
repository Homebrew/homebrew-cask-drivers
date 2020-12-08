cask "canon-captureontouch-utility" do
  version "4.5.19.1002"
  sha256 "351e6af9528bf426ca78dc347396520af8980e4d6ee597aa4aa7ef6394a4276d"

  url "https://files.canon-europe.com/files/soft01-48579/Driver/CaptureOnTouch_Installer.zip",
    verified: "files.canon-europe.com/files/soft01-48579/Driver/"
  appcast "https://www.canon.se/supportproduct/gettabcontent/?type=download&language=&productTcmUri=tcm:87-1204588&productNameSearch=imageFORMULA%20P-215II&supportProductInformation=imageFORMULA%20P-215II%5Enull%5Enull%5Enull%5Enull&referrer=https%3A%252F%252Fwww.canon.se%252Fsupport%252Fconsumer_products%252Fproducts%252Fscanners%252Fothers%252Fimageformula_p-215ii.html&languageSelectedIndex=-1",
          must_contain: version.major_minor_patch
  name "CaptureOnTouch"
  homepage "https://www.canon.se/support/consumer_products/products/scanners/others/imageformula_p-215ii.html?type=download"

  depends_on macos: ">= :sierra"

  pkg "CaptureOnTouch_Installer.pkg"

  uninstall quit:    "jp.co.canon-elec.TouchV4",
            pkgutil: [
              "com.canonElectronics.Installer.CaptureOnTouch.pkg",
              "com.canonElectronics.Installer.AppPlugin.pkg",
              "com.canonElectronics.Installer.DropboxPlugin.pkg",
              "com.canonElectronics.Installer.GoogleDrivePlugin.pkg",
              "com.canonElectronics.Installer.MailPlugin.pkg",
              "com.canonElectronics.Installer.OneDrivePlugin.pkg",
              "com.canonElectronics.Installer.PrinterPlugin.pkg",
              "com.canonElectronics.Installer.SugarSyncPlugin.pkg",
            ],
            delete:  [
              "/Applications/CaptureOnTouch.app",
              "/Applications/CaptureOnTouch.app/Contents/SharedSupport/AutoUpdate.app",
              "/Applications/CaptureOnTouch.app/Contents/SharedSupport/Touch.app",
            ]
end
