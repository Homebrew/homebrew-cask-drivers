cask "kyocera-printer-drivers" do
  version "5.1,2020.07.01"
  sha256 "21bc52ac4a1d2d074a1c56bb17d76092dd0e2405648ffa960577e603eed7cd0c"

  url "https://cdn.kyostatics.net/dlc/eu/driver/all/kyocera_os_x_10_6.-downloadcenteritem-Single-File.downloadcenteritem.tmp/MacPhase#{version.before_comma.no_dots}_#{version.after_comma.dots_to_underscores}.zip",
      verified: "kyostatics.net/dlc/eu/driver/all/"
  appcast "https://dlc.kyoceradocumentsolutions.eu/index/service/dlc.false._.TASKALFA5053CI._.EN.html"
  name "Kyocera Mac Driver"
  homepage "https://dlc.kyoceradocumentsolutions.eu/index/service/dlc.false._.TASKALFA5053CI._.EN.html#MAC"

  container nested: "Mac#{version.before_comma.no_dots}_#{version.after_comma}-KDC/Kyocera OS X 10.9+ Web build #{version.after_comma}.dmg"

  pkg "Kyocera OS X 10.9+ Web build #{version.after_comma}.pkg"

  uninstall pkgutil: [
    "com.kyocera.kyoceraMacintosh.kyoPDFfilter_F.pkg",
    "com.kyocera.kyoceraMacintosh.PreferencePanes.pkg",
    "com.kyocera.kyoceraMacintosh.PCL_F.pkg",
    "com.kyocera.kyoceraMacintosh.kyoprefilter_F.pkg",
    "com.kyocera.kyoceraMacintosh.kyofilter_f.pkg",
    "com.kyocera.kyoceraMacintosh.Print_Panel.pkg",
    "com.kyocera.kyoceraMacintosh.KfSummary.pkg",
    "com.kyocera.kyoceraMacintosh.OSX10-1.pkg",
    "com.kyocera.kyoceraMacintosh.OSX10.pkg",
  ]
end
