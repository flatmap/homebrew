class Cobra < Formula
  desc "Proof and Code Presentation Framework"
  homepage "http://www.flatmap.net/cobra"
  url "https://github.com/flatmap/cobra/releases/download/version-1.0.5/cobra-1.0.5.zip"
  sha256 "e39a5c68b4eedccca6de18cc67cb71ed5b49ce8aa87121e9841f3d234491af2a"

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
