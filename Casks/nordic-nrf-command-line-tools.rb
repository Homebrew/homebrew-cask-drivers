cask "nordic-nrf-command-line-tools" do
  version "10.12.1"
  sha256 "16b4f40beee75ec8d7a6b45b5c1b831a7602dc397791a7439282290d37b2a357"

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-#{version.major}-x-x/#{version.dots_to_hyphens}/nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"
  name "nRF Command Line Tools"
  homepage "https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF-Command-Line-Tools"

  depends_on cask: "segger-jlink"
  container nested: "nRF-Command-Line-Tools_#{version.dots_to_underscores}.tar"

  binary "nrfjprog/nrfjprog"
  binary "mergehex/mergehex"
end
