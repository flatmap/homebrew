class Cobra < Formula
  desc "Proof and Code Presentation Framework"
  homepage "http://www.flatmap.net/cobra"
  url "https://github.com/flatmap/cobra/releases/download/version-1.0.5/cobra-1.0.5.zip"
  sha256 "987354e447247884020a957f5bc2c32ec6f1fd63d6e6a12a927ba69dba9e9ec7"

  bottle :unneeded
  depends_on :java => "1.8+"

  def install
    libexec.install "bin"
    libexec.install "lib"
    (bin/"cobra").write <<-EOS.undent
      #!/bin/sh
      exec "#{libexec}/bin/cobra" "$@"
    EOS
  end
end
