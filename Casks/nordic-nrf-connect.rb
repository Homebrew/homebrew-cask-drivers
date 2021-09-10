cask "nordic-nrf-connect" do
  version "3.7.1"
  sha256 "84a655513ea8db5f76157b27b0c7a2ead99b76fc970ccc7f756f561fff84d8ec"

  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg",
      verified: "github.com/NordicSemiconductor/pc-nrfconnect-core/"
  name "nRF Connect"
  desc "Development software for Bluetooth Low Energy and cIoT"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect.app"
end
