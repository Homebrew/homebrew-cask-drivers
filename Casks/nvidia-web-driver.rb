cask 'nvidia-web-driver' do
  version '378.10.10.10.25.104'
  sha256 '09eeff4db92c97668bea73b4e66a272f70e6cdf08d2b4937c0eef8d8e43c466a'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update',
          checkpoint: '71d97cd1ebb5c5c1ee9a5e2aa52a2e9ad002467d9034aa5293759c224c348327'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
