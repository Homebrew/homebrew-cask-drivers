cask "nvidia-web-driver" do
  on_el_capitan :or_older do
    version "346.03.15f16"
    sha256 "f0c1a23a262ba6db35f1d7a0da39e7b7648805d63d65be20af33e582cc7050bc"
  end
  on_sierra do
    version "378.05.05.25f13"
    sha256 "f5849297ee8a4a754f26d998db83878d4c02324db00ec28ab38da1d847d7e5c1"
  end
  on_high_sierra :or_newer do
    version "387.10.10.10.40.140"
    sha256 "a877c0ef81fbbb4d42bee6c1de063fff47d610a5397ffc6ce7617f28269bfe73"
  end

  basename = "/Library/PreferencePanes/NVIDIA Driver Manager.prefPane/Contents/MacOS/NVIDIA Web Driver Uninstaller.app/Contents/Resources"

  url "https://images.nvidia.com/mac/pkg/#{version.major}/WebDriver-#{version}.pkg"
  name "NVIDIA Web Driver"
  appcast "https://gfe.nvidia.com/mac-update"
  desc "Driver for NVIDIA Web"
  homepage "https://www.nvidia.com/Download/index.aspx"

  depends_on macos: "<= :high_sierra"

  pkg "WebDriver-#{version}.pkg"

  uninstall_preflight do
    system_command "/usr/sbin/pkgutil",
                   args: ["--expand", "#{basename}/NVUninstall.pkg", "#{basename}/NVUninstall"],
                   sudo: true
  end

  uninstall launchctl: [
              "com.nvidia.nvagent",
              "com.nvidia.nvroothelper",
            ],
            quit:      [
              "com.nvidia.NVIDIAWebDriverUninstaller",
              "com.nvidia.nvagent",
              "com.nvidia.nvmenu",
            ],
            kext:      [
              "com.nvidia.NVDAStartupWeb",
              "com.nvidia.web.GeForce*Web",
              "com.nvidia.web.NVDA*Web",
            ],
            script:    [ # Only the third argument is used and should be the system's root path
              { executable: "#{basename}/NVUninstall/Scripts/postinstall",
                args:       ["/", "/", "/"],
                sudo:       true },
            ],
            pkgutil:   "com.nvidia.web-driver",
            delete:    "/Library/PreferencePanes/NVIDIA Driver Manager.prefPane"

  zap trash: [
    "~/Library/Preferences/ByHost/com.nvidia.nvagent.*.plist",
    "~/Library/Preferences/ByHost/com.nvidia.nvprefpane.*.plist",
  ]

  caveats do
    reboot
  end
end
