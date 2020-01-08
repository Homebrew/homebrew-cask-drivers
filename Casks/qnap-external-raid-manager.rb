cask 'qnap-external-raid-manager' do
  version '1.2.4.1202'
  sha256 'f44cb8d265e06ac30fd6b5bf42ccedbb3f6596736e092ffdf94e7ce79f19c6fa'

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
