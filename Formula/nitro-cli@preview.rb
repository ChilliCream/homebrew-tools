class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.7.0-p.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.5/nitro-osx-arm64.zip"
      sha256 "5081f927d45346d02a6ddc5569e2674f8c6d64d778d42325516c46132f07cfd2"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.5/nitro-osx-x64.zip"
      sha256 "0f5714b04da8db3914ea3adb067042825c8ab09cc88fb7e579ee8b2d501ebbba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.5/nitro-linux-arm64.tar.gz"
      sha256 "d02d1a669f273653c7e2ea58f22dad76ec1d243f9e10f07f95af71e85b2f9d1a"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.7.0-p.5/nitro-linux-x64.tar.gz"
      sha256 "0e9bfc257f5ea2d74c02a054ef7e40ef7be91a1ad6318d39000be639cb5a7c97"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
