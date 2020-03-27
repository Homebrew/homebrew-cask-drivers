cask 'nordic-nrf-command-line-tools' do
  version '10.6.0'
  sha256 'e3dafe8731f8d1b267fd373303bc0178ab88be7a6345b710e3cf2a4326cda682'

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-#{version.major}-x-x/nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"
  name 'nRF Command Line Tools'
  homepage 'https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF-Command-Line-Tools'

  depends_on cask: 'segger-jlink'
  container nested: "nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
