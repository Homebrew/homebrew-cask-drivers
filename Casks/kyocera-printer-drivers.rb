cask "kyocera-printer-drivers" do
  version "5.4,2022.07.11,2022.06.01"
  sha256 "21bc52ac4a1d2d074a1c56bb17d76092dd0e2405648ffa960577e603eed7cd0c"

  url "https://dam.kyoceradocumentsolutions.com/content/dam/gdam_dc/dc_global/executables/web/Mac#{version.csv.first.no_dots}_#{version.csv.second}-KDC-en.zip"
  name "Kyocera Mac Driver"
  desc "Kyocera printer drivers"
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
