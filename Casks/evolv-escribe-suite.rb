cask 'evolv-escribe-suite' do
  version '2_SP15_1'
  sha256 '2d2b636ae9c7ec001667f98ae585f48affb301209a1a7398421efb9bad342adf'

  url "https://downloads.evolvapor.com/SetupEScribe#{version}_INT.pkg"
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
