cask "nordic-nrf-connect" do
  version "3.9.0"
  sha256 "c16888cbd69f668cd885af161fb5fa7b9c949e1a6c3e33249f77cb5023a1ea88"

  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg",
      verified: "github.com/NordicSemiconductor/pc-nrfconnect-core/"
  name "nRF Connect"
  desc "Development software for Bluetooth Low Energy and cIoT"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect for Desktop.app"
end
