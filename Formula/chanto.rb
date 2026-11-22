class Chanto < Formula
  desc "Fast, lean coding agent for your terminal"
  homepage "https://chanto.sh"
  version "0.1.24"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2889afa7dc7c8fcaee9816d54298e034f7a899e315d1b473eb0d8ec267837fb4"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "01aa5c365b15e1b8df569a6f1f6029254ba743348b6fdf5604c3806ea04b9a03"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f075f995771144168d3bfd23aacf035a87f7b5b12f38c9f4ae2ebad729d723f"
    end
    on_intel do
      url "https://github.com/chanto-sh/chanto/releases/download/v#{version}/chanto-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "07a092dea51ba4100f645e4d8953648895d3baf77418cd8a3fdcc01a9b019fce"
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
