cask 'nvidia-cuda' do
  version '9.2.64'
  sha256 'af7bd0aa4c889974a31365ca40005e21651959387e8392d3a29c2f90dd187f40'

  url "https://developer.nvidia.com/compute/cuda/#{version.major_minor}/Prod/local_installers/cuda_#{version}_mac"
  name 'Nvidia CUDA'
  homepage 'https://developer.nvidia.com/cuda-zone'

  depends_on macos: '>= :sierra'

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
