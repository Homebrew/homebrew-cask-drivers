cask 'nitrokey' do
  version '1.3.2'
  sha256 'd6276f6e632625f90a3081251b44636bc0ff4a17e245f080fbd3d661c0eadb85'

  # github.com/Nitrokey/nitrokey-app was verified as official when first introduced to the cask
  url "https://github.com/Nitrokey/nitrokey-app/releases/download/v#{version}/Nitrokey.App.dmg"
  appcast 'https://github.com/Nitrokey/nitrokey-app/releases.atom'
  name 'Nitrokey App'
  homepage 'https://www.nitrokey.com/download/macos'

  app "Nitrokey App v#{version}.app"
end
