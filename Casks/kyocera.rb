cask 'kyocera' do
  version '2019.11.21'
  sha256 'a0a9ebbeb577a32c389f20bcd11af2b8094d04fa8acbe8cc73de444b102d0a4e'

  url "https://www.kyoceradocumentsolutions.eu/content/download-center/eu/drivers/all/MacPhase50_#{version.dots_to_underscores}_zip.download.zip"
  name 'Kyocera Mac Driver 5.0'
  homepage 'https://dlc.kyoceradocumentsolutions.eu/'

  depends_on macos: '>= :mavericks'
  container nested: "Mac50_#{version}-KDC/Kyocera OS X 10.9+ Web build #{version}.dmg"

  pkg "Kyocera OS X 10.9+ Web build #{version}.pkg"

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
