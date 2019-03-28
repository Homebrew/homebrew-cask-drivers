cask 'evolv-escribe-suite' do
  version '2_SP19'
  sha256 '184a1e8d5ec462ad7b602347f182035826a0d5fecde51c54494d57ebfe80c3e0'

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
