cask 'nvidia-web-driver' do
  version '387.10.10.10.30.103'
  sha256 'b629d14094afc9565c6331116d920301064336bbd16d20ba73514940cf9631dd'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update',
          checkpoint: 'eb2dd0c64a3a98889ae521faa2cbfd7d72c479367d234018d8ca0794968ba832'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
