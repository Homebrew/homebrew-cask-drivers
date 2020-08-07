cask "nordic-nrf-connect" do
  version "3.4.2"
  sha256 "aa6bd43742111d2d3dea30f9d180eb6e923c81cbf7b9c311039774030a3747eb"

  # github.com/NordicSemiconductor/pc-nrfconnect-core/ was verified as official when first introduced to the cask
  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg"
  appcast "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases.atom"
  name "nRF Connect"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect.app"
end
