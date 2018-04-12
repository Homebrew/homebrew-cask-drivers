cask 'nitrokey' do
  version '1.3'
  sha256 '6fe4540441f637c8ecc440f1564866295de8cb1cd5f9e2f5f7adaf13d2575b89'

  # github.com/Nitrokey/nitrokey-app was verified as official when first introduced to the cask
  url "https://github.com/Nitrokey/nitrokey-app/releases/download/v#{version}/Nitrokey.App.dmg"
  appcast 'https://github.com/Nitrokey/nitrokey-app/releases.atom',
          checkpoint: '557a05e9b7a326526bfadda52d670aa59097d2fb2c8ad42bdc1a05f119d19a23'
  name 'Nitrokey App'
  homepage 'https://www.nitrokey.com/download/macos'

  app "Nitrokey App v#{version}.app"
end
