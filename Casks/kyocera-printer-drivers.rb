cask 'kyocera-printer-drivers' do
  version '5.0,2019.11.21'
  sha256 'a0a9ebbeb577a32c389f20bcd11af2b8094d04fa8acbe8cc73de444b102d0a4e'

  url "https://www.kyoceradocumentsolutions.eu/content/download-center/eu/drivers/all/MacPhase#{version.before_comma.no_dots}_#{version.after_comma.dots_to_underscores}_zip.download.zip"
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
