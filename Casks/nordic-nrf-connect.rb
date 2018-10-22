cask 'nordic-nrf-connect' do
  version '56320.17.9112767'
  sha256 '689c828042799b40750e3a07728c463116babb477e7e07f814a8e410edca276c'

  url "https://www.nordicsemi.com/eng/nordic/download_resource/#{version.dots_to_slashes}"
  appcast 'https://www.nordicsemi.com/eng/nordic/Products/nRF-Connect-for-Desktop/nRF-Connect-macOS/56320'
  name 'nRF Connect'
  homepage 'https://www.nordicsemi.com/eng/Products/Bluetooth-low-energy/nRF-Connect-for-desktop/'

  app 'nRF Connect.app'
end
