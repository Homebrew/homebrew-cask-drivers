cask "nordic-nrf-connect" do
  version "3.6.1"
  sha256 "27589e37e9fa56a67301d645e1b05f57d347e78b90b9fa12d112d868546691cf"

  # github.com/NordicSemiconductor/pc-nrfconnect-core/ was verified as official when first introduced to the cask
  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg"
  appcast "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases.atom"
  name "nRF Connect"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect.app"
end
