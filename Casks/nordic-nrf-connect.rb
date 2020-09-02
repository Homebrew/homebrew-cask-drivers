cask "nordic-nrf-connect" do
  version "3.5.0"
  sha256 "c3f4ddc8056530c753b3fbda75bdd24c4a8cb41e07320a10e0519719aea3d90d"

  # github.com/NordicSemiconductor/pc-nrfconnect-core/ was verified as official when first introduced to the cask
  url "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases/download/v#{version}/nrfconnect-#{version}.dmg"
  appcast "https://github.com/NordicSemiconductor/pc-nrfconnect-core/releases.atom"
  name "nRF Connect"
  homepage "https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Connect-for-desktop/"

  app "nRF Connect.app"
end
