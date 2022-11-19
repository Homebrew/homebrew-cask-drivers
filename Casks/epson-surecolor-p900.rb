cask "epson-surecolor-p900" do
  version :latest
  sha256 :no_check

  url "https://ftp.epson.com/drivers/SCP900_Lite_64NR_NA.dmg"
  name "Epson SureColor P900 Driver & Utilities Package"
  desc "Printer Driver, Media Installer, & Software Updater"
  homepage "https://epson.com/"

  depends_on macos: ">= :el_capitan"

  installer manual: "EPSON.app"

  uninstall pkgutil: [
    "com.aviatainc.p3.epson",
    "com.epson.emx.p900",
    "com.epson.ens.430",
    "com.epson.epsvcp",
    "com.epson.guide.surecolor_p700_p900.en",
    "com.epson.pkg.ema",
    "com.epson.pkg.ijpdrv.sc-p900series.a.Machine_104_and_later",
    "com.epson.pkg.ijpdrv.sc-p900series.a.Machine_105_and_later",
    "com.epson.pkg.ijpdrv.sc-p900series.a.Module_107_and_later",
    "com.epson.pkg.ijpdrv.sc-p900series.a.USBClassDriver_107_and_later",
  ]
end
