cask 'caldigit-docking-utility' do
  version '1.9.11'
  sha256 '391d59b80377b3bd3d92ec198ee5e47bf3d135003fe032e3326a3d6620453661'

  url 'https://downloads.caldigit.com/CalDigit-Docking-Station-Utility.zip'
  name 'CalDigit Thunderbolt Docking Station Utility'
  homepage 'https://www.caldigit.com/'

  pkg "CalDigit Docking Station Utility v#{version}.pkg"

  uninstall     signal:  ['TERM', 'CalDigit.CalDigit-Docking-Station-Utility'],
                pkgutil: 'com.CalDigit.CDSU.pkg'
end
