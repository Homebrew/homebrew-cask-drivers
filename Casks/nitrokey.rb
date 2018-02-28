cask 'nitrokey' do
  version '1.2'
  sha256 'f137979318b91915cadbb8e52fbea3c529b3dfdfd807a974b54b06e3582575be'

  # github.com/Nitrokey/nitrokey-app was verified as official when first introduced to the cask
  url "https://github.com/Nitrokey/nitrokey-app/releases/download/v#{version}/nitrokey-app-v#{version}.dmg"
  appcast 'https://github.com/Nitrokey/nitrokey-app/releases.atom',
          checkpoint: '557a05e9b7a326526bfadda52d670aa59097d2fb2c8ad42bdc1a05f119d19a23'
  name 'Nitrokey'
  homepage 'https://www.nitrokey.com/download/macos'

  app "Nitrokey App v#{version}.app"
end
