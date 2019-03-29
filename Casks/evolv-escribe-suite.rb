cask 'evolv-escribe-suite' do
  version '2_SP20'
  sha256 '5805ebdad6095cf1c79add7091311ac3ec8465c43ceab6d1cc064693a95d1bcc'

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
