cask 'nordic-nrf-command-line-tools' do
  version '10.8.0'
  sha256 '0c6af1ce68829d1ccc7b600219b255605a0c7ca704dabc92f74a191aa16af0e4'

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF-command-line-tools/sw/Versions-#{version.major}-x-x/#{version.dots_to_hyphens}/nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"
  name 'nRF Command Line Tools'
  homepage 'https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF-Command-Line-Tools'

  depends_on cask: 'segger-jlink'
  container nested: "nRF-Command-Line-Tools_#{version.dots_to_underscores}.tar"

  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
