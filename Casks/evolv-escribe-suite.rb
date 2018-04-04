cask 'evolv-escribe-suite' do
  version '2_SP13'
  sha256 '6c9feaf534faf5e14a3521ff24df921e189fd26fed932e9c6b29850f8fc29bc5'

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
                       args:       ['--exit'],
                     }
end
