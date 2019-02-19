cask 'nordic-nrf-connect' do
  version '2.6.2'
  sha256 '937c19f280b4c7744d364ca6ac36b15f2f67dd578c95a1d8477c324987d1d2a0'

  # github.com/NordicSemiconductor/pc-nrfconnect-core/ was verified as official when first introduced to the cask
  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg"
  appcast 'https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases.atom'
  name 'nRF Connect'
  homepage 'https://www.nordicsemi.com/eng/Products/Bluetooth-low-energy/nRF-Connect-for-desktop/'

  app 'nRF Connect.app'
end
