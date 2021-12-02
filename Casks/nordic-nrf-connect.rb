cask "nordic-nrf-connect" do
  version "3.9.1"
  sha256 "626db504fad2df55035c88678d2af0027ce3ce8185da931dbb8ba8c7fd2dfba2"

  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg",
      verified: "github.com/NordicSemiconductor/pc-nrfconnect-core/"
  name "nRF Connect"
  desc "Development software for Bluetooth Low Energy and cIoT"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect for Desktop.app"
end
