class Cider < Formula
  desc "Docker Engine API daemon on top of Apple container"
  homepage "https://github.com/ChilliCream/cider"
  url "https://github.com/ChilliCream/cider/releases/download/0.3.0/cider-osx-arm64.zip"
  sha256 "fdabff94d6176f1e596255a25a98cb06dfc7628f1b080fe6ae5013bde498e0d5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on "docker"
  depends_on "docker-compose"
  depends_on macos: :tahoe

  def install
    bin.install "cider"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cider version")
  end
end
