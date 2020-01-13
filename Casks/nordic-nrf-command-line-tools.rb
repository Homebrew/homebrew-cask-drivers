cask 'nordic-nrf-command-line-tools' do
  version '10.5.0'
  sha256 '5683ad7684cf71868232008e707cf447bf22aea150068117e0b77076ec3e0fd8'

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-#{version.major}-x-x/nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"
  name 'nRF Command Line Tools'
  homepage 'https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF-Command-Line-Tools'

  depends_on cask: 'segger-jlink'
  container nested: "nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
