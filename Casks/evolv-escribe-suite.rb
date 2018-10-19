cask 'evolv-escribe-suite' do
  version '2_SP17_1'
  sha256 '3fcb3babff744ae1674d6ee6544c04ba46e9f71f39fd894cf4ba7c6882440a0b'

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
