cask 'sat-smart-driver' do
  if MacOS.version == :yosemite
    version '0.8'
    sha256 'a2c33ccecf720128dbdc0aad0f3a1fc26a0fe374a3cc383f3928530eb7154f2a'
  else
    version '0.10'
    sha256 'ead7e706a5befdd9c239058d76735a13f6b93ea85dfe6edfaafb9a454ef6f39a'
  end

  url "https://github.com/kasbert/OS-X-SAT-SMART-Driver/raw/master/SATSMARTDriver-#{version}.dmg"
  name 'OS-X-SAT-SMART-Driver'
  homepage 'https://github.com/kasbert/OS-X-SAT-SMART-Driver/'

  depends_on macos: '>= :Yosemite'

  pkg "SATSMARTDriver-#{version}-Release.pkg"

  uninstall delete: [
                      '/System/Library/Extensions/SATSMARTDriver.kext',
                      '/System/Library/Extensions/SATSMARTLib.plugin',
                      '/Library/Extensions/SATSMARTDriver.kext',
                      '/Library/Extensions/SATSMARTLib.plugin',
                    ]

  caveats do
    reboot
  end
end
