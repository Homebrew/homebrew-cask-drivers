cask 'nordic-nrf-command-line-tools' do
  version '10.4.1'
  sha256 '204adc0bf84d39efd6f84d2c603f162db8e61f04eff43ac176c6183282133b52'

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-#{version.major}-x-x/nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"
  name 'nRF Command Line Tools'
  homepage 'https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF-Command-Line-Tools'

  depends_on cask: 'segger-jlink'
  container nested: "nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
