cask 'logitech-myharmony' do
  version '1.0'
  sha256 '495bb8dc54fdd63bda110a9cfe69b9b152eb5997c1ecc48737f4c1f2b3d8853f'

  url "https://app.myharmony.com/prod/mac/#{version.major_minor}/MyHarmony-App.dmg"
  name 'MyHarmony'
  homepage 'https://setup.myharmony.com/'

  pkg 'MyHarmonySetup.pkg'

  uninstall quit:    'org.logitech.MyHarmony',
            pkgutil: 'MyHarmony.pkg',
            rmdir:   '/Applications/MyHarmony.app'
end
