cask 'nordic-nrf-command-line-tools' do
  version '10.7.0'
  sha256 '3322c48a80b4694a1b62628c54a7b59507a8aac40e961fc6fd3d1fa856d12e22'

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-#{version.major}-x-x/#{version.dots_to_hyphens}/nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"
  name 'nRF Command Line Tools'
  homepage 'https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF-Command-Line-Tools'

  depends_on cask: 'segger-jlink'
  container nested: "nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
