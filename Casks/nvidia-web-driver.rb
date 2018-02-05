cask 'nvidia-web-driver' do
  version '387.10.10.10.25.156'
  sha256 'dd35f919e0dcf576ae27efb96439bd2558f3868018824c79a70b2c5283820aed'

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  appcast 'https://gfe.nvidia.com/mac-update',
          checkpoint: '75b39b4602e202db5a650264c5748daa2476068791f73a967f350cbbf97adab1'
  name 'NVIDIA Web Driver'
  homepage 'https://www.nvidia.com/Download/index.aspx'

  depends_on macos: '>= :high_sierra'

  pkg "WebDriver-#{version}.pkg"

  uninstall pkgutil: 'com.nvidia.web-driver'

  caveats do
    reboot
  end
end
