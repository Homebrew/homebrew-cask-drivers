cask 'xerox-print-driver' do
  name 'Xerox Print Driver'
  homepage 'http://www.support.xerox.com/support/colorqube-8900/downloads/enus.html'

  if MacOS.version <= :leopard
    version '2.94.3'
    sha256 '1c59094ad2f39e2a086dfb59adc555fc87d1f88a8ac6ff034e7580eed55cf360'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx/pt_BR/10.5.XeroxPrintDriver.#{version}.dmg"
  elsif MacOS.version <= :snow_leopard
    version '2.112.0'
    sha256 '3517cb64f283f12c60030710073812131361ddae358950bc35afe72b163a9bf7'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx/pt_BR/XeroxPrintDriver.#{version}.dmg"
  elsif MacOS.version <= :lion
    version '3.52.0_1481'
    sha256 'ed958701b6adca202f0b7936cfea0fac64c2161e228f35e00f341e29df36c18f'
    url "http://download.support.xerox.com/pub/drivers/CQ8570/drivers/macosx107/pt_BR/XeroxPrintDriver.#{version}.dmg"
  else
    version '3.121.0_1854'
    sha256 '12584af50c9dcf7a529eea3b1ee4346d3f76ba18a9c5b7b86c28544f33abaad5'
    url "http://download.support.xerox.com/pub/drivers/VERSANT_180/drivers/macosx1010/ar/XeroxPrintDriver_#{version}.dmg"
  end

  pkg "Xerox Print Driver #{version.major_minor_patch}.pkg"

  uninstall pkgutil: [
                       'com.xerox.installer.addprintqueue',
                       'com.xerox.installer.finishup',
                       'com.xerox.print.xeroxPrinter.pkg',
                     ]

  zap rmdir: '/Library/Application Support/Xerox'
end
