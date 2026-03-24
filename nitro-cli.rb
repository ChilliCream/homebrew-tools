class NitroCli < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  url "https://github.com/ChilliCream/graphql-platform"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.6/nitro-osx-arm64.zip"
      sha256 "8d788e4351d4c2b571c741a2ee1a4fb01ad7a7b6476d9926e509e13f427eedb3"
    else
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.0.0-rc.1.6/nitro-osx-x64.zip"
      sha256 "b6be360620208e688f67fd6a236a6a52e9fb93a17660b652d0479b85d6048f91"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    system "#{bin}/nitro", "--version"
  end
end
