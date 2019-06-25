cask 'nordic-nrf5x-command-line-tools' do
  version '10.1.1'
  sha256 '7433d54a4d6edf478cbbf319d9217284285668605926fca47c2121b8b4680a88'

  url "https://www.nordicsemi.com/-/media/Software-and-other-downloads/Desktop-software/nRF5-command-line-tools/sw/Versions-10-x-x/nRF-Command-Line-Tools_#{version.dots_to_underscores}_OSX.tar"
  name 'nRF5x Command Line Tools'
  homepage 'https://www.nordicsemi.com/Software-and-Tools/Development-Tools/nRF5-Command-Line-Tools'

  def install
      # ENV.deparallelize
      system "rm", "JLink_MacOSX_V644e.pkg"
      system "rm", "nRF-Command-Line-Tools_10_1_1_OSX.dmg"
      system "rm", "nRF-Command-Line-Tools_10_1_1_OSX.pkg"
      system "rm", "nRF-Command-Line-Tools_10_1_1_OSX.tar"

  end

  depends_on cask: 'segger-jlink'

  system "tar", "-xvf", "#{staged_path}/nRF-Command-Line-Tools_10_1_1_OSX.tar", "-C", "#{staged_path}"
  system "rm", "#{staged_path}/JLink_MacOSX_V644e.pkg"
  system "rm", "#{staged_path}/nRF-Command-Line-Tools_10_1_1_OSX.dmg"
  system "rm", "#{staged_path}/nRF-Command-Line-Tools_10_1_1_OSX.pkg"
  system "rm", "#{staged_path}/nRF-Command-Line-Tools_10_1_1_OSX.tar"
  binary 'nrfjprog/nrfjprog'
  binary 'mergehex/mergehex'
end
