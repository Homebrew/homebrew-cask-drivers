cask "nordic-nrf-connect" do
  version "3.4.1"
  sha256 "4eb98d5e86d8885f00f2c211097e41dcc10bd36e6e964dfdb6212b6dd873ea8c"

  # github.com/NordicSemiconductor/pc-nrfconnect-core/ was verified as official when first introduced to the cask
  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg"
  appcast "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases.atom"
  name "nRF Connect"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect.app"
end
