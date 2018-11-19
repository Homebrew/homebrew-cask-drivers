cask 'nvidia-cuda' do
  if MacOS.version <= :sierra
    version '9.0.176'
    sha256 '8fad950098337d2611d64617ca9f62c319d97c5e882b8368ed196e994bdaf225'
  else
    version '10.0.130'
    sha256 '4f76261ed46d0d08a597117b8cacba58824b8bb1e1d852745658ac873aae5c8e'
  end

  url "https://developer.nvidia.com/compute/cuda/#{version.major_minor}/Prod/local_installers/cuda_#{version}_mac"
  name 'Nvidia CUDA'
  homepage 'https://developer.nvidia.com/cuda-zone'

  depends_on macos: '<= :high_sierra'

  installer script: {
                      executable: 'CUDAMacOSXInstaller.app/Contents/MacOS/CUDAMacOSXInstaller',
                      args:       ['--accept-eula', '--silent'],
                    }

  uninstall script:    {
                         executable: "/Developer/NVIDIA/CUDA-#{version.major_minor}/bin/uninstall_cuda_#{version.major_minor}.pl",
                         sudo:       true,
                       },
            launchctl: [
                         'com.nvidia.CUDASoftwareUpdate',
                         'com.nvidia.cuda.launcher',
                         'com.nvidia.cudad',
                       ],
            kext:      'com.nvidia.CUDA',
            delete:    '/Library/PreferencePanes/CUDA Preferences.prefPane'

  zap trash: '/Library/Frameworks/CUDA.framework'
end
