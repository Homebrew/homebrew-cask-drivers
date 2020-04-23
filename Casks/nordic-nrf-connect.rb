cask 'nordic-nrf-connect' do
  version '3.3.3'
  sha256 '46f68fa1935b740fb44f9e057f1782313b93aa6baa576533537345b7b4437feb'

  # github.com/NordicSemiconductor/pc-nrfconnect-core/ was verified as official when first introduced to the cask
  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg"
  appcast 'https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases.atom'
  name 'nRF Connect'
  homepage 'https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/'

  app 'nRF Connect.app'
end
