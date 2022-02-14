cask "nordic-nrf-connect" do
  version "3.10.0"
  sha256 "90a8724690f2b9cbb49e13245a6e360b962bbc3e5533ab15e4f63afd96517f3d"

  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg",
      verified: "github.com/NordicSemiconductor/pc-nrfconnect-core/"
  name "nRF Connect"
  desc "Development software for Bluetooth Low Energy and cIoT"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect for Desktop.app"
end
