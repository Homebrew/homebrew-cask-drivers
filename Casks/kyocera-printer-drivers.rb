cask 'kyocera-printer-drivers' do
  version '5.0a,2019.11.27'
  sha256 '022c1e9a710d157b4e68e4c0d5b519ca31280eb47c43296cdae6e92da864b41d'

  # kyostatics.net/dlc/eu/driver/all/ was verified as official when first introduced to the cask
  url "https://cdn.kyostatics.net/dlc/eu/driver/all/kyocera_os_x_10_6.-downloadcenteritem-Single-File.downloadcenteritem.tmp/MacPhase#{version.before_comma.no_dots}_#{version.after_comma.dots_to_underscores}.zip"
  appcast 'https://dlc.kyoceradocumentsolutions.eu/index/service/dlc.false._.TASKALFA5053CI._.EN.html'
  name 'Kyocera Mac Driver'
  homepage 'https://dlc.kyoceradocumentsolutions.eu/index/service/dlc.false._.TASKALFA5053CI._.EN.html#MAC'

  depends_on macos: '>= :mavericks'
  container nested: "Mac50_#{version.after_comma}-KDC/Kyocera OS X 10.9+ Web build #{version.after_comma}.dmg"

  pkg "Kyocera OS X 10.9+ Web build #{version.after_comma}.pkg"

  uninstall pkgutil: [
                       'com.kyocera.kyoceraMacintosh.kyoPDFfilter_F.pkg',
                       'com.kyocera.kyoceraMacintosh.PreferencePanes.pkg',
                       'com.kyocera.kyoceraMacintosh.PCL_F.pkg',
                       'com.kyocera.kyoceraMacintosh.kyoprefilter_F.pkg',
                       'com.kyocera.kyoceraMacintosh.kyofilter_f.pkg',
                       'com.kyocera.kyoceraMacintosh.Print_Panel.pkg',
                       'com.kyocera.kyoceraMacintosh.KfSummary.pkg',
                       'com.kyocera.kyoceraMacintosh.OSX10-1.pkg',
                       'com.kyocera.kyoceraMacintosh.OSX10.pkg',
                     ]
end
