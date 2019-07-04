cask 'nordic-nrf5x-command-line-tools' do
  version '10.2.1'
  sha256 'b4b77e4368267ba948f5bedbdc1be7699322e453c4e9f097f48763b78e192ff2'

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF5-command-line-tools/sw/Versions-10-2-1/nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"
  name 'nRF5x Command Line Tools'
  homepage 'https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF5-Command-Line-Tools'

  depends_on cask: 'segger-jlink'

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
