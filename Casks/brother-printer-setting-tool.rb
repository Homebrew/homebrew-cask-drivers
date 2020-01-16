cask 'brother-printer-setting-tool' do
  if MacOS.version <= :mojave
    version '1.1.4'
    sha256 '67ed22d37f234067e61dca40bb801ff6480fe6be09dbeaaeeddfd2786f824de0'
    url "https://download.brother.com/welcome/dlfp100591/pstm#{version.no_dots}x13all.dmg"
  else
    version '1.1.4a'
    sha256 '813feb597f8d750f96bbf9f8fbd49ed40f6c5e49513658d656fc8619c9dd20d3'
    url "https://download.brother.com/welcome/dlfp100791/pstm#{version.no_dots}x13all.dmg"
  end

  name 'Brother Printer Setting Tool'
  homepage 'https://support.brother.com/'

  depends_on macos: '>= :el_capitan'

  pkg 'BrotherUtility.pkg'

  uninstall pkgutil: 'com.Brother.Brotherdriver.BrotherUtility'
end
