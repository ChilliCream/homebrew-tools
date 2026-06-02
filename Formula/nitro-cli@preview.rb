class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.12-p.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.3/nitro-osx-arm64.zip"
      sha256 "9192c0bab9d93a591b8dd644ce9bd1683263f9cf064c8573c05b2304ff93c1ec"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.3/nitro-osx-x64.zip"
      sha256 "f2b26fef5fd69d7fda2ae59ba1f4280917f6fc24e0308a0e92eceb6667ef5b01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.3/nitro-linux-arm64.tar.gz"
      sha256 "e85ab6d2f0939ae12961d93c945d2dee157a3a4f44987e0f704c94a53347f235"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.3/nitro-linux-x64.tar.gz"
      sha256 "9563ebecbd8145f410cb9b47a889583aed4707a7412084e410aa29513c9fd702"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
