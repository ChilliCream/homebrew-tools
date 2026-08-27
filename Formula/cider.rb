class Cider < Formula
  desc "Docker Engine API daemon on top of Apple container"
  homepage "https://github.com/ChilliCream/cider"
  url "https://github.com/ChilliCream/cider/releases/download/0.2.0/cider-osx-arm64.zip"
  sha256 "b329c419deb4ba45111674a362c1a6d658d64ac1e61de37b59eae3eb9fecb911"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on "docker"
  depends_on "docker-compose"
  depends_on macos: :tahoe

  conflicts_with "cider-preview", because: "both install the cider binary"

  def install
    bin.install "cider"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cider version")
  end
end
