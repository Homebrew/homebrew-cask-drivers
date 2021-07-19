cask "nordic-nrf-command-line-tools" do
  version "10.13.0"
  sha256 "29b8824be08acbd7215bcb5de77f156660a35c982e3e2a669e1abf3924d4d158"

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-#{version.major}-x-x/#{version.dots_to_hyphens}/nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"
  name "nRF Command Line Tools"
  homepage "https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF-Command-Line-Tools"

  depends_on cask: "segger-jlink"
  container nested: "nRF-Command-Line-Tools_#{version.dots_to_underscores}.tar"

  binary "nrfjprog/nrfjprog"
  binary "mergehex/mergehex"
end
