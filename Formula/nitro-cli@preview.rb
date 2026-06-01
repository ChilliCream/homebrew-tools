class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.0.12-p.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.2/nitro-osx-arm64.zip"
      sha256 "0d79b3ce5b840995617d05e1e2ce43d7ad31a692e3f236664ac375b0cc85c8a5"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.2/nitro-osx-x64.zip"
      sha256 "86f39b434ecc23f046923ddfc601cdfb1f2b01e5b029e39bcb855fe8cbc47432"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.2/nitro-linux-arm64.tar.gz"
      sha256 "a3dbdfd5b440da4692766e55808b8b2971ded68bcbdfdb6f50d84a9cc8c9f13f"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.12-p.1.2/nitro-linux-x64.tar.gz"
      sha256 "8aa64a8655ac3452639650ba94c99151fc6c98dbd8c61d8cfc6eadd8f350493b"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
