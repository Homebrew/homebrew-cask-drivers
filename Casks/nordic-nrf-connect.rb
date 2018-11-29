cask 'nordic-nrf-connect' do
  version '2.6.0'
  sha256 '?'

  url "https://www.nordicsemi.com/eng/nordic/download_resource/#{version.dots_to_slashes}"
  appcast 'https://www.nordicsemi.com/eng/nordic/Products/nRF-Connect-for-Desktop/nRF-Connect-macOS/56320'
  name 'nRF Connect'
  homepage 'https://www.nordicsemi.com/eng/Products/Bluetooth-low-energy/nRF-Connect-for-desktop/'

  app 'nRF Connect.app'
end
