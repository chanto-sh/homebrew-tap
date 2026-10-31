class Chanto < Formula
  desc "Fast, lean coding agent for your terminal"
  homepage "https://chanto.sh"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "32b28b0b92f004a56b0710eb4bac6603d2d00f4a18e88b16881d3a9be225ead9"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2d120b949a53f7d0c02d1268030c6ac8c872f2515a8039d7879bd29257dd31b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "76e86507f1ff23ff6363f930864cd5bfa4289dc844283749e975d890e2ffded5"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cac3c5712abd78473824abd433ba09f999b237974bca9d38f2e3d671505c20a"
    end
  end

  def install
    bin.install "chanto"
    doc.install "LICENSE", "NOTICE", "THIRD_PARTY_LICENSES.txt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chanto --version")
  end
end
