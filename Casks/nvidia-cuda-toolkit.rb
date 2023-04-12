cask "nvidia-cuda-toolkit" do
  on_sierra :or_older do
    version "9.0.176"
    sha256 "8fad950098337d2611d64617ca9f62c319d97c5e882b8368ed196e994bdaf225"

    url "https://developer.nvidia.com/compute/cuda/#{version.major_minor}/Prod/local_installers/cuda_#{version}_mac-dmg"
  end
  on_high_sierra :or_newer do
    version "10.1.243"
    sha256 "432a2f07a793f21320edc5d10e7f68a8e4e89465c31e1696290bdb0ca7c8c997"

    url "https://developer.download.nvidia.com/compute/cuda/#{version.major_minor}/Prod/local_installers/cuda_#{version}_mac.dmg"
  end

  name "Nvidia CUDA Toolkit"
  desc "Tools to create high performance GPU-accelerated applications"
  homepage "https://developer.nvidia.com/cuda-toolkit"

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
    :sierra,
    :high_sierra,
  ]

  installer script: {
    executable: "CUDAMacOSXInstaller.app/Contents/MacOS/CUDAMacOSXInstaller",
    args:       ["--accept-eula", "--silent"],
  }

  uninstall script:    {
              executable: "/Developer/NVIDIA/CUDA-#{version.major_minor}/bin/uninstall_cuda_#{version.major_minor}.pl",
              sudo:       true,
            },
            launchctl: [
              "com.nvidia.CUDASoftwareUpdate",
              "com.nvidia.cuda.launcher",
              "com.nvidia.cudad",
            ],
            kext:      "com.nvidia.CUDA",
            delete:    "/Library/PreferencePanes/CUDA Preferences.prefPane"

  zap trash: "/Library/Frameworks/CUDA.framework"

  caveats do
    discontinued
  end
end
