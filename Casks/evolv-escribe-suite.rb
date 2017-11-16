cask 'evolv-escribe-suite' do
  version '2_SP9'
  sha256 '5adb89b2baea36e38be5c4685ffbb182024b001ba94cf975155846b7277f2559'

  url "https://downloads.evolvapor.com/SetupEScribe#{version}_INTL.pkg"
  name 'EScribe Suite'
  homepage 'https://www.evolvapor.com/'

  pkg "SetupEScribe#{version}_INTL.pkg"

  uninstall pkgutil: [
                       'org.ecigstats.Main',
                       'com.evolvapor.EScribe.Suite',
                     ]
end
