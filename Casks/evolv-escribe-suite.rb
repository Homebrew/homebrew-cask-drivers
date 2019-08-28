cask 'evolv-escribe-suite' do
  version '2_SP19'
  sha256 'e2544857312c5ddbffce0c66c88e86aa424f5c779123064e0283ac634c101ed4'

  url "https://downloads.evolvapor.com/SetupEScribe#{version}_INT.pkg"
  appcast 'https://www.evolvapor.com/escribe'
  name 'EScribe Suite'
  homepage 'https://www.evolvapor.com/'

  pkg "SetupEScribe#{version}_INT.pkg"

  uninstall pkgutil: [
                       'org.ecigstats.Main',
                       'com.evolvapor.EScribe.Suite',
                     ],
            script:  {
                       executable: '/Applications/EScribe Suite.app/Contents/MacOS/ECigStats.app/Contents/MacOS/RunProgram',
                       args:       ['--exit'],
                     }
end
