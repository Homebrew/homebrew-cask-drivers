cask 'caldigit-docking-utility' do
  version '1.9.11'
  sha256 :no_check

  url 'https://downloads.caldigit.com/CalDigit-Docking-Station-Utility.zip'
  name 'CalDigit Thunderbolt Docking Station Utility'
  homepage 'https://www.caldigit.com/'

  depends_on macos: '>= :mavericks'

  pkg "CalDigit Docking Station Utility v#{version}.pkg"

  uninstall     signal:  ['TERM', 'CalDigit.CalDigit-Docking-Station-Utility'],
                pkgutil: 'com.CalDigit.CDSU.pkg'
end
