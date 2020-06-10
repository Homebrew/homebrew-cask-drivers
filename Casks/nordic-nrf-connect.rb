cask 'nordic-nrf-connect' do
  version '3.4.0'
  sha256 'eeea8baa7772584a51d91316edde7b048a7007b5c1fa5259179851f6ebc2d0f5'

  # github.com/NordicSemiconductor/pc-nrfconnect-core/ was verified as official when first introduced to the cask
  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg"
  appcast 'https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases.atom'
  name 'nRF Connect'
  homepage 'https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/'

  app 'nRF Connect.app'
end
