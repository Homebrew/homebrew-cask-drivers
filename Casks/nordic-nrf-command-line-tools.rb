cask 'nordic-nrf-command-line-tools' do
  version '10.2.1'
  sha256 'd9f1dfcedf60b9c6a8ec7ba69de50234f45789c505446c68db1171e7ebed24df'

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-#{version.major}-x-x/nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"
  name 'nRF Command Line Tools'
  homepage 'https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF-Command-Line-Tools'

  depends_on cask: 'segger-jlink'

  #binary 'nrfjprog/nrfjprog'
  #binary 'mergehex/mergehex'
end
