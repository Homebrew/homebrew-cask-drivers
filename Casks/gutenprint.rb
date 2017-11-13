cask 'gutenprint' do
  version '5.2.13'
  sha256 'e2af8941ee2ec2aa244591caec95c1cd89718ca77007eeaa0fca07328b0648bf'

  url "https://downloads.sourceforge.net/gimp-print/gutenprint-#{version.major_minor}/#{version}/gutenprint-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gimp-print/rss',
          checkpoint: '99893d15cc4d8019254b00cbe0f600c91bfa8a718a3904a27fa60d6c93550640'
  name 'Gutenprint'
  homepage 'http://gimp-print.sourceforge.net/'

  pkg "gutenprint-#{version}.pkg"

  uninstall pkgutil: 'org.gutenprint.printer-driver'
end
