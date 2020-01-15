cask 'brother-printer-setting-tool' do
  if MacOS.version <= :mojave
    version '1.1.4,13:dlfp100591'
    sha256 '67ed22d37f234067e61dca40bb801ff6480fe6be09dbeaaeeddfd2786f824de0'
  else
    version '1.1.4a,13:dlfp100791'
    sha256 '813feb597f8d750f96bbf9f8fbd49ed40f6c5e49513658d656fc8619c9dd20d3'
  end

  url "https://download.brother.com/welcome/#{version.after_colon}/pstm#{version.before_comma.no_dots}x#{version.after_comma.before_colon}all.dmg"
  name 'Brother Printer Setting Tool'
  homepage 'https://support.brother.com/'

  depends_on macos: '>= :el_capitan'

  pkg 'BrotherUtility.pkg'

  uninstall pkgutil: 'com.Brother.Brotherdriver.BrotherUtility'
end
