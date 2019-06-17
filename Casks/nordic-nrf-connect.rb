cask 'nordic-nrf-connect' do
  version '2.7.0'
  sha256 'ce11b14b44bb6e29f520e75ff125dae57572b5c98c15aeac0b6c1b106cdf027c'

  # github.com/NordicSemiconductor/pc-nrfconnect-core/ was verified as official when first introduced to the cask
  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg"
  appcast 'https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases.atom'
  name 'nRF Connect'
  homepage 'https://www.nordicsemi.com/eng/Products/Bluetooth-low-energy/nRF-Connect-for-desktop/'

  app 'nRF Connect.app'
end
