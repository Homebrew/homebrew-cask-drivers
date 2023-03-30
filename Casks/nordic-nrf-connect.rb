cask "nordic-nrf-connect" do
  version "4.0.1"
  sha256 "c13d14dd99547f10d8a64e385c214b387948df559c3172338b28ad9d2e8edf8a"

  url "https://github.com/NordicSemiconductor/pc-nrfconnect-launcher/releases/download/v#{version}/nrfconnect-#{version}.dmg",
      verified: "github.com/NordicSemiconductor/pc-nrfconnect-launcher/"
  name "nRF Connect"
  desc "Development software for Bluetooth Low Energy and cIoT"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect for Desktop.app"
end
