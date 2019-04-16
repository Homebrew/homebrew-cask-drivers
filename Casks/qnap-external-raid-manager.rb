cask 'qnap-external-raid-manager' do
  version '1.1.1.0311'
  sha256 '66035d9593665440b07c574e31733eb834dd7650b2122d12b05a24f61d8acfc2'

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
