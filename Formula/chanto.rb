class Chanto < Formula
  desc "Fast, lean coding agent for your terminal"
  homepage "https://chanto.sh"
  version "0.1.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "48ed3bb19e29be3baf5f3fc8a135022d2c6dbaf3aaf78ee26bb7e3aceed5867a"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f3b1c16fda2b221955b6e3b0243e8cb1bcfe59eb26212e50ab92cf2dd268d487"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6200dc99dbd65dbf4ddfd0467ea549d16150e93210db7dcd2584ffcd66653b6c"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af4ab5fab4f61060306aba3ba097c6715135d09296b0e9f1c9b866e904150d0f"
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
