cask 'escribe-suite' do
  version '2_SP7'
  sha256 '1092ae3da0927b560e9c543616bbfd1ca265d86b7b0f6d6c651b6e56de601de3'

  url "https://downloads.evolvapor.com/SetupEScribe#{version}_INTL.pkg"
  name 'EScribe Suite'
  homepage 'https://www.evolvapor.com/'

  pkg "SetupEScribe#{version}_INTL.pkg"

  uninstall pkgutil: [
                       'org.ecigstats.Main',
                       'com.evolvapor.EScribe.Suite',
                     ]
end
