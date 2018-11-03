cask 'evolv-escribe-suite' do
  version '2_SP18'
  sha256 '51d824ce95ea80a6c3d8c075b4b523b58cdbb2f1265d8dbfb3c5c72a22555cf6'

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
