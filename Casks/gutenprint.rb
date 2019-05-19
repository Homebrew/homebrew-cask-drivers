cask 'gutenprint' do
  version '5.2.14'
  sha256 'b1a58df72e3719b48de3b802d7e5c5a4d7d355170d8a99a4c45458a2bf871cb9'

  # downloads.sourceforge.net/gimp-print was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gimp-print/gutenprint-#{version.major_minor}/#{version}/gutenprint-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gimp-print/rss'
  name 'Gutenprint'
  homepage 'https://gimp-print.sourceforge.io/'

  pkg "gutenprint-#{version}.pkg"

  uninstall pkgutil: 'org.gutenprint.printer-driver'
end
