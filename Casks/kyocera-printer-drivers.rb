cask "kyocera-printer-drivers" do
  version "5.4,2022.07.11,2022.06.01"
  sha256 "ee4d077d28eca394bca5d8d05642a26b72850688f275ed6ca1ab8a13d3ebe8b2"

  url "https://dam.kyoceradocumentsolutions.com/content/dam/gdam_dc/dc_global/executables/web/Mac#{version.csv.first.no_dots}_#{version.csv.second}-KDC-en.zip"
  name "Kyocera Mac Driver"
  desc "Drivers for Kyocera printers"
  homepage "https://www.kyoceradocumentsolutions.com/download/"

  livecheck do
    skip "No version information available"
  end

  container nested: "Kyocera OS X 10.9+ Web build #{version.csv.second}.dmg"

  pkg "Kyocera OS X 10.9+ Web build #{version.csv.third}.pkg"

  uninstall pkgutil: [
    "com.kyocera.kyoceraMacintosh.Adjustment.pkg",
    "com.kyocera.kyoceraMacintosh.Framework.pkg",
    "com.kyocera.kyoceraMacintosh.KfSummary.pkg",
    "com.kyocera.kyoceraMacintosh.kpsl.pkg",
    "com.kyocera.kyoceraMacintosh.kyofilter_f.pkg",
    "com.kyocera.kyoceraMacintosh.kyoPDFfilter_F.pkg",
    "com.kyocera.kyoceraMacintosh.kyoprefilter_F.pkg",
    "com.kyocera.kyoceraMacintosh.OSX10-1.pkg",
    "com.kyocera.kyoceraMacintosh.OSX10-2.pkg",
    "com.kyocera.kyoceraMacintosh.OSX10.pkg",
    "com.kyocera.kyoceraMacintosh.PCL_F.pkg",
    "com.kyocera.kyoceraMacintosh.PreferencePanes.pkg",
    "com.kyocera.kyoceraMacintosh.Print_Panel.pkg",
  ]
end
