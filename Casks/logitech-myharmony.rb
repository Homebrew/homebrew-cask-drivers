cask 'logitech-myharmony' do
  version '1.0.0.97'
  sha256 'c5950b7c0461b5713f8896892291689e227046f7a4fc56fec790850f4b938fe0'

  url "https://app.myharmony.com/prod/mac/#{version.major_minor}/MyHarmony-App.dmg"
  appcast 'https://app.myharmony.com/prod/mac/harmonycast.xml'
  name 'MyHarmony'
  homepage 'https://setup.myharmony.com/'

  pkg 'MyHarmonySetup.pkg'

  uninstall quit:    'org.logitech.MyHarmony',
            pkgutil: 'MyHarmony.pkg',
            rmdir:   '/Applications/MyHarmony.app'
end
