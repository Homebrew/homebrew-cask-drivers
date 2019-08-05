cask 'qnap-external-raid-manager' do
  version '1.2.2.0628'
  sha256 '1185ffcbd7ee15639b21e208efb3f3fa62dcbeeaa8e3f0e0697163b23c11c181'

  url "https://download.qnap.com/Storage/Utility/QNAPExternalRAIDManagerMac-#{version}.dmg"
  name 'QNAP External Raid Manager'
  homepage 'https://www.qnap.com/en/utilities/essentials'

  depends_on macos: '>= :high_sierra'

  pkg 'QNAP External RAID Manager.pkg'

  uninstall quit:    'com.qnap.raidmanager',
            pkgutil: 'com.qnap.raidmanager',
            delete:  '/Library/Application Support/QNAP/QNAP External RAID Manager',
            rmdir:   '/Library/Application Support/QNAP'
end
