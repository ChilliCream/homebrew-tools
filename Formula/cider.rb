class Cider < Formula
  desc "Docker Engine API daemon on top of Apple container"
  homepage "https://github.com/ChilliCream/cider"
  url "https://github.com/ChilliCream/cider/releases/download/0.3.1/cider-osx-arm64.zip"
  sha256 "75695f794630196368f701944e04f8f8a1e2b731fd6b0ecd2bdcced0d45459fd"
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
