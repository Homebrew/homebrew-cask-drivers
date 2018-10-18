cask 'nvidia-web-driver' do
  version '387.10.10.10.40.105'
  sha256 '1e8af5f9eb8080f519fa57dfd1b48e2927d7b951cb92e0302878d41608805eef'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
