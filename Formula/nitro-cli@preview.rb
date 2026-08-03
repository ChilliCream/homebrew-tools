class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.6.0-p.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.15/nitro-osx-arm64.zip"
      sha256 "fd2ab858adb119e62d991531f86174f34582398eec37521a0a79472105cfd487"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.15/nitro-osx-x64.zip"
      sha256 "073985a65ae47b964e2e7c6b1737ac49150eab583dcbb6c05952257f61f56aca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.15/nitro-linux-arm64.tar.gz"
      sha256 "2e404eaf104b9588e6ca537628fbb622521869aefc6bc0d24d7cbd9f82a8a01a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.6.0-p.15/nitro-linux-x64.tar.gz"
      sha256 "b4f74c7d8374f18620cab58f1c6081f1ec7b5e1dcf976cdae124ec3990af6347"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
