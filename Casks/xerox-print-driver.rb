cask 'xerox-print-driver' do
  name 'Xerox Print Driver'
  homepage 'http://www.support.xerox.com/support/colorqube-8900/downloads/enus.html?operatingSystem=macosx'

  if MacOS.version <= :snow_leopard
    version '2.112.0'
    sha256 '3517cb64f283f12c60030710073812131361ddae358950bc35afe72b163a9bf7'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx/pt_BR/XeroxPrintDriver.#{version}.dmg"
  elsif MacOS.version <= :lion
    version '3.52.0_1481'
    sha256 'ed958701b6adca202f0b7936cfea0fac64c2161e228f35e00f341e29df36c18f'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx107/pt_BR/XeroxPrintDriver.#{version}.dmg"
  elsif MacOS.version <= :yosemite
    version '3.123.0_1865'
    sha256 'ac9c013705742538c0faa5df2194e3a7d4fb9980dd0570e41b213ff87172ee6c'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx1010/ar/XeroxPrintDriver_#{version}.dmg"
  elsif MacOS.version <= :el_capitan
    version '4.17.1_1980'
    sha256 '36b1ddf1f598ceaf6f91d38b0d228be3f8f6188c251761424cbea7a869488883'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx1011/pt_BR/XeroxPrintDriver_#{version}.dmg"
  else
    version '4.19.3_2011'
    sha256 'e09b1afa325346ff1ea5d4cfbdb4e0528eeec9eada57e1ad5809ad6dc29e82c7'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macos1012/pt_BR/XeroxPrintDriver_#{version}.dmg"
  end

  pkg "Xerox Print Driver #{version.major_minor_patch}.pkg"

  uninstall pkgutil: [
                       'com.xerox.installer.addprintqueue',
                       'com.xerox.installer.finishup',
                       'com.xerox.print.xeroxPrinter.pkg',
                     ]

  zap rmdir: '/Library/Application Support/Xerox'
end
