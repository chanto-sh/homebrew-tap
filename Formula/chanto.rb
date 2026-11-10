class Chanto < Formula
  desc "Fast, lean coding agent for your terminal"
  homepage "https://chanto.sh"
  version "0.1.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "45c46a4cd520406382d285d5542f5aa41849d723dc51cdaa4f9e65835b975430"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a10f5499be75d23334c545395e963b689df6d02779bb143884fe4cff236f4cf3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c77b3cd208c5252a3be9196bb22b42fb681b0e337cbe5551b0b4a3c72272ab5"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db083866cdfc191d7f4681f55523e34633f64f848500fa30eb1d35c44662bd36"
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
