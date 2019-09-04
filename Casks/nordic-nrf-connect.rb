cask 'nordic-nrf-connect' do
  version '3.2.0'
  sha256 '02ce74b1ba987fd1d842fd70b977238e5750a62135153f6a0c75b84517fd22d8'

  # github.com/NordicSemiconductor/pc-nrfconnect-core/ was verified as official when first introduced to the cask
  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg"
  appcast 'https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases.atom'
  name 'nRF Connect'
  homepage 'https://www.nordicsemi.com/eng/Products/Bluetooth-low-energy/nRF-Connect-for-desktop/'

  app 'nRF Connect.app'
end
