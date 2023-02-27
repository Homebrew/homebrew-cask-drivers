cask "nordic-nrf-connect" do
  version "4.0.0"
  sha256 "c56a3d390b1f9d1a9258b45576a9ab69f0ab2a8ecc1b866bc808e0b7afa654dc"

  url "https://github.com/NordicSemiconductor/pc-nrfconnect-launcher/releases/download/v#{version}/nrfconnect-#{version}.dmg",
      verified: "github.com/NordicSemiconductor/pc-nrfconnect-launcher"
  name "nRF Connect"
  desc "Development software for Bluetooth Low Energy and cIoT"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect for Desktop.app"
end
