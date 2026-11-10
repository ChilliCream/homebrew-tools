class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.8.0-p.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.10/nitro-osx-arm64.zip"
      sha256 "c46b89d028f74487fca12b426cc2513394e67d7781923aa52dae37d9c7c246b3"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.10/nitro-osx-x64.zip"
      sha256 "32284da7e7a765907051629fd674a079f965460396bc04421d545f6c8c4cd09f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.10/nitro-linux-arm64.tar.gz"
      sha256 "35cc202953a6ea768f670268d65dd2b543650cedece48238f3658f8521b0b669"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.8.0-p.10/nitro-linux-x64.tar.gz"
      sha256 "61545bf392ed8cd5783a0d7420340eb2b36583056fce992414ae50855fa3f6b3"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
