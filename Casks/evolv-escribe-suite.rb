cask 'evolv-escribe-suite' do
  version '2_SP12'
  sha256 '30cab006644172e67ee3b055a0fa1566a45a639ff1148291a603c961c72f2588'

  url "https://downloads.evolvapor.com/SetupEScribe#{version}_INTL.pkg"
  name 'EScribe Suite'
  homepage 'https://www.evolvapor.com/'

  pkg "SetupEScribe#{version}_INTL.pkg"

  uninstall pkgutil: [
                       'org.ecigstats.Main',
                       'com.evolvapor.EScribe.Suite',
                     ],
            script:  {
                       executable: '/Applications/EScribe Suite.app/Contents/MacOS/ECigStats.app/Contents/MacOS/RunProgram',
                       args:       [
                                     '--exit',
                                   ],
                     }
end
