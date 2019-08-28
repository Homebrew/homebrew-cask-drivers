cask 'casio-exam-mode-unlocker' do
  version '1.0.1,5'
  sha256 '1a78b0cd56c032a74f1a4805b408c6a3306cd09d690e083b48480091f0dc72ed'

  url "https://edu.casio.com/education/support_software/dl/exam_mode_unlocker/exammodeunlocker_inst_#{version.before_comma.no_dots}_#{version.after_comma}.zip"
  appcast 'https://edu.casio.com/forteachers/er/software/',
          configuration: version.before_comma.no_dots
  name 'Casio Exam Mode Unlocker'
  homepage 'https://edu.casio.com/education/support_software/'

  depends_on macos: [
                      :yosemite,
                      :el_capitan,
                      :sierra,
                      :high_sierra,
                    ]

  app 'Exam Mode Unlocker.app'
end
