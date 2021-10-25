cask "nordic-nrf-connect" do
  version "3.7.2"
  sha256 "dcd367329f18612297730229ff5ec882f9b01c4686108ef6d790ded7f11f08a4"

  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg",
      verified: "github.com/NordicSemiconductor/pc-nrfconnect-core/"
  name "nRF Connect"
  desc "Development software for Bluetooth Low Energy and cIoT"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect.app"
end
