cask "nordic-nrf-connect" do
  version "3.6.0"
  sha256 "3750c69d7f26c1aff7ef372a83a2be1159b8ab9e7896b49486ae83beacd31ace"

  # github.com/NordicSemiconductor/pc-nrfconnect-core/ was verified as official when first introduced to the cask
  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg"
  appcast "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases.atom"
  name "nRF Connect"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect.app"
end
