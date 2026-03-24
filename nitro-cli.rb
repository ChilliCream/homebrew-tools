class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.12/nitro-osx-arm64.zip"
      sha256 "a696be9b85f9f81487b28b84f2152a118ee4a61fddea1dd841951a1bba8923d0"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.12/nitro-osx-x64.zip"
      sha256 "06023e775c86d6d49cc3a4fc151e41921e5d8e6edfd2313ffdc26b7c81bb8c0c"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
