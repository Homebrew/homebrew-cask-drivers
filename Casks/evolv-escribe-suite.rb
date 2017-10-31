cask 'evolv-escribe-suite' do
  version '2_SP8'
  sha256 'a99340f60c89ed26354ee6157bc50771a23983f5df9315332333b95888e72b24'

  url "https://downloads.evolvapor.com/SetupEScribe#{version}_INTL.pkg"
  name 'EScribe Suite'
  homepage 'https://www.evolvapor.com/'

  pkg "SetupEScribe#{version}_INTL.pkg"

  uninstall pkgutil: [
                       'org.ecigstats.Main',
                       'com.evolvapor.EScribe.Suite',
                     ]
end
