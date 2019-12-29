cask 'xerox-print-driver' do
  if MacOS.version <= :yosemite
    version '3.123.0_1865'
    sha256 'ac9c013705742538c0faa5df2194e3a7d4fb9980dd0570e41b213ff87172ee6c'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx1010/ar/XeroxPrintDriver_#{version}.dmg"
  elsif MacOS.version <= :el_capitan
    version '4.17.1_1980'
    sha256 '36b1ddf1f598ceaf6f91d38b0d228be3f8f6188c251761424cbea7a869488883'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx1011/pt_BR/XeroxPrintDriver_#{version}.dmg"
  elsif MacOS.version <= :sierra
    version '5.2.0_2115'
    sha256 '9989b6c127fca8c97b24bd86fd4d20035cd094c69e3fd41f6a243361f86483ec'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macos1012/pt_BR/XeroxPrintDriver_#{version}.dmg"
  else
    version '5.4.2_2138'
    sha256 '8b69dd93c07f8fe61a4e15bff49d3f1e5a41a669e84cd6b6f199187fa50b9eac'
    url "http://download.support.xerox.com/pub/drivers/BALTORO_HF/drivers/macOS10_13/pt_BR/XeroxDrivers_#{version}.dmg"
  end

  name 'Xerox Print Driver'
  homepage 'https://www.support.xerox.com/support/colorqube-8570/downloads/'

  if MacOS.version <= :sierra
    pkg "Xerox Print Driver #{version.sub(/_.*/, '')}.pkg"
  else
    pkg "Xerox Drivers #{version.sub(/_.*/, '')}.pkg"
  end

  uninstall launchctl: [
                         'com.aviatainc.powerengage.XRTK',
                         'com.aviatainc.powerengage.helper.XRTK',
                       ],
            quit:      'com.aviatainc.powerengage.EngageLauncher',
            pkgutil:   [
                         'com.xerox.installer.addprintqueue',
                         'com.xerox.installer.finishup',
                         'com.xerox.print.xeroxPrinter.pkg',
                       ],
            delete:    '/Library/Caches/Xerox',
            rmdir:     '/Library/Application Support/Xerox'

  zap trash: '~/Library/Application Support/PowerENGAGE/XEROX'
end
