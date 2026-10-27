class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.6/nitro-osx-arm64.zip"
      sha256 "20c87c8cb20f90bc1e506ae2bfe453bf42fb053edc593c473da1e73d85f39f8d"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.6/nitro-osx-x64.zip"
      sha256 "3025a09a29b2de6a0c6ebe3f48b0f3f485f78eda723674de5fdaf33672868225"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.6/nitro-linux-arm64.tar.gz"
      sha256 "9a17ab63c8626482cf7a65da750b159c2641972f4572c61727ba618bc30c65cd"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.6/nitro-linux-x64.tar.gz"
      sha256 "8d4aa51ce5deef2d765c8d58f48feac44d246f8f45a10ea00a1e7b26dff46595"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
