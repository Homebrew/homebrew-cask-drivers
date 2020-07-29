cask "nvidia-cuda" do
  if MacOS.version <= :sierra
    version "9.0.176"
    sha256 "8fad950098337d2611d64617ca9f62c319d97c5e882b8368ed196e994bdaf225"
    url "https://developer.nvidia.com/compute/cuda/#{version.major_minor}/Prod/local_installers/cuda_#{version}_mac-dmg"
  else
    version "10.1.105"
    sha256 "1d3355fa48b5763737f1c97a6436c774eda24ae91435e8ecc22428d23a01374a"
    url "https://developer.nvidia.com/compute/cuda/#{version.major_minor}/Prod/local_installers/cuda_#{version}_mac.dmg"
  end

  appcast "https://developer.nvidia.com/cuda-toolkit-archive"
  name "Nvidia CUDA"
  homepage "https://developer.nvidia.com/cuda-zone"

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
end
